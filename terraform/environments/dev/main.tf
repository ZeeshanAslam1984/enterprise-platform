module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

module "networking" {
  source = "../../modules/networking"

  vpc_id = module.vpc.vpc_id

  environment = var.environment

  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "security" {
  source = "../../modules/security"

  vpc_id = module.vpc.vpc_id

  environment = var.environment
}

module "compute" {
  source = "../../modules/compute"

  instance_name = "dev-web-server"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.networking.public_subnet_id

  security_group_ids = [
    module.security.application_security_group_id
  ]

  key_name = var.key_name

  tags = {
    Environment = "dev"
    Project     = "platform-engineering-lab"
  }
}

    module "load_balancer" {
  source = "../../modules/load-balancer"

  environment = var.environment
  vpc_id      = module.vpc.vpc_id

  public_subnet_ids = [
    module.networking.public_subnet_id
  ]

  security_group_ids = [
    module.security.application_security_group_id
  ]

  tags = {
    Environment = "dev"
    Project     = "platform-engineering-lab"
  }
}
