resource "aws_security_group" "web_traffic_sg" {
    description = "security grp for web servers"
    name = "web_traffic_sg"
    vpc_id = var.vpc_id
    ingress {
        from_port = var.http_port
        to_port = var.http_port
        protocol = var.tcp_protocol
        cidr_blocks = [var.ingress_allowed_traffic]
    }

    ingress {
        from_port = var.https_port
        to_port = var.https_port
        protocol = var.tcp_protocol
        cidr_blocks = [var.ingress_allowed_traffic]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = [var.egress_allowed_traffic]
    }

    tags = {
      Name = var.sg_name
    }
  
}