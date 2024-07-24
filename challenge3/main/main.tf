provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../terraform-aws-vpc"
  cidr_block = var.vpc_cidr_block
  tags       = var.tags
}

module "subnet" {
  source = "../terraform-aws-subnet"
  vpc_id = module.vpc.vpc_id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  tags = var.tags
}

module "internet_gateway" {
  source = "../terraform-aws-igw"
  vpc_id = module.vpc.vpc_id
  igw_name = var.igw_name
}

module "eu-west-1-route-table" {
  source = "../terraform-aws-route-table"
  vpc_id = module.vpc.vpc_id
  rt_name = var.rt_name
  igw_id = module.internet_gateway.aws_internet_gateway_id
}

module "dev-route-table-association" {
  source = "../terraform-aws-route-table-assoc"
  subnet_id = module.subnet.subnet_id
  route_table_id = module.eu-west-1-route-table.route_table_id
}

module "dev-aws_security_groups" {
  source = "../terraform-aws-security-grps"
  vpc_id = module.vpc.vpc_id 
}