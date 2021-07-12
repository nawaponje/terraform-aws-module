module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "sandbox-vpc"
  cidr = "10.0.0.0/16"
  azs             = var.availability_zones
  private_subnets = var.private_subnet
  public_subnets  = var.public_subnet

  enable_nat_gateway = false
  single_nat_gateway = false
  one_nat_gateway_per_az = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC_ID created from module"
  sensitive   = false
}	
