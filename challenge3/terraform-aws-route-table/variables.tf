variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "rt_name" {
    description = "tag for eu-west-1 route table "
    type = string
    default = "route table"
}

variable "igw_id" {
  description = "ID for IGW"
  type = string
}

