provider "local" {}

resource "local_file" "foo" {
  content  = "Hello world"
  filename = "/tmp/foo.bar"
}

variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

output "x1" {
  value = "The value of x  is - ${var.x}"
}