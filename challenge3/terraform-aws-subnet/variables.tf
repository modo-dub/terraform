variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type = string
}

variable "tags" {
  description = "Tags for subnet"
  type = map(string)
  default = {}
}