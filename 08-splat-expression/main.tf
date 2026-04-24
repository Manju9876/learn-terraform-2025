resource "aws_instance" "main" {
  for_each = var.instance

  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
}
instance = {
  default = {
    one = ""
    two = ""
    three = ""
  }
}
output "ids" {
  value = aws_instance.main.id
}