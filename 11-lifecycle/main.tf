resource "aws_instance" "demo" {
  ami = var.ami_id
  instance_type  = "t3.small"
}

variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}