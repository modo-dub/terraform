output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value = module.subnet.subnet_id
  
}

output "route_table_id" {
  description = "The route table ID"
  value = module.eu-west-1-route-table.route_table_id
  
}

output "internet_gateway_id" {
  description = "internet gateway id"
  value = module.internet_gateway.aws_internet_gateway_id
}

/* output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.subnet.subnet_id
} */