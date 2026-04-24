resource "aws_security_group" "main" {
  for_each = var.component_name
  name = each.key

    dynamic "ingress" {
      for_each = each.value.ingress
      content {
        from_port = ingress.value
        to_port   = ingress.value
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }

    dynamic "egress" {
      for_each = each.value.egress
      content {
        from_port        = egress.value
        to_port          = egress.value
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
      }
    }
  }



variable "component_name" {
  default = {
    one = {
      ingress = {
        http  = 80
        https = 443
      }
      egress = {
        app  = 250
      }

    }
    two = {
      ingress = {
        ssh = 22
      }
      egress = {
        app = 543
      }
    }
    }
  }
