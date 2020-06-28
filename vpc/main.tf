
provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.44.0"
  name = "vpc-${var.environment}"
  cidr = var.vpc_cidr


  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

 #enable_nat_gateway       = true
 #enable_vpn_gateway       = true
  enable_dns_hostnames     = true
  enable_dns_support       = true
 #enable_s3_endpoint       = true



 tags = var.tags
}
