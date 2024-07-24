variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block"{
  description = "Subnet for Webservers"
  type = string
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "AZ for webservers"
  type = string
  default = "eu-west-1b"
}

variable "igw_name" {
  description = "IGW name"
  type = string
  default = "eu-west-1-igw"
}

variable "rt_name" {
  description = "route table name"
  type = string
  default = "eu-west-1-rt-1"
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {
    Name = "dev_vpc"
    Environment = "dev"
    Project     = "example"
  }
}