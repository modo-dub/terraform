variable "cidr_block" {
    description = "CIDR block for DEV AWS env"
    type = string
}

variable "tags" {
  description = "Tags for VPC"
  type = map(string)
  default = {}
}