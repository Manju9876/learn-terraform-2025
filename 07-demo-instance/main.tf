provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testing" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-043ff9d2da877c20a"]

  tags = {
    Name = "testing_demo_instance"
  }
}

resource "aws_route53_record" "dns_record" {
  zone_id = "Z0739029GOTW9PY9KD3W"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [aws_instance.testing.private_ip]
}