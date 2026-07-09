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
