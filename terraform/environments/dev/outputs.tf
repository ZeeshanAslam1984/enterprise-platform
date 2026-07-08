output "vpc_id" {
  description = "VPC ID created in dev environment"
  value       = module.vpc.vpc_id
}
