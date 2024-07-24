resource "aws_subnet" "eu-west-1-web" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
    availability_zone = var.availability_zone

    tags = var.tags
}