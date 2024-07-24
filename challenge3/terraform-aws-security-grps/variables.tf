variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "http_port" {
    description = "http port"
    type = string
    default = "80"
}

variable "https_port" {
    description = "https port"
    type = string
    default = "443"
}


variable "tcp_protocol" {
    description = "http protocol"
    type = string
    default = "tcp"
}

variable "ingress_allowed_traffic" {
    type = string
    default = "0.0.0.0/0"
}

variable "egress_allowed_traffic" {
    type = string
    default = "0.0.0.0/0"
}

variable "sg_name" {
    description = "name for web traffic SG"
    type = string
    default = "web-traffic-sg"
}