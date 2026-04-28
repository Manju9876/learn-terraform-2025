resource "aws_instance" "demo" {
  ami = var.ami_id
  instance_type  = "t3.small"

  # lifecycle {
  #   create_before_destroy = true
  # }

  # lifecycle {
  #   prevent_destroy = true
  # }
  lifecycle {
    ignore_changes = [instance_type]
  }
}

variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

ignore_changes = [
  instance_type,
]