data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.8.1"

  name                               = "c8_sandbox_vpc"
  cidr                               = "172.31.0.0/16"
  azs                                = data.aws_availability_zones.available.names
  public_subnets                     = ["172.31.101.0/24", "172.31.102.0/24"]
  #private_subnets                    = ["172.31.1.0/24", "172.31.2.0/24"]
  #database_subnets                   = ["172.31.201.0/24", "172.31.202.0/24"]
  create_database_subnet_route_table = false
  enable_nat_gateway                 = false
  single_nat_gateway                 = false
  map_public_ip_on_launch            = true

  tags = {
    terraform = "true"
  }
}
