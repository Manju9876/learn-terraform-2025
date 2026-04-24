resource "aws_instance" "main" {
  for_each = var.instance

  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09eda0ff78c765172"]
}
variable  "instance"  {
  default = {
    one = ""
    two = ""
    three = ""
  }
}


output "ids" {
  value = aws_instance.main
}