provider "local" {}

resource "local_file" "foo" {
  content  = "Hello world"
  filename = "/tmp/foo.bar"
}

#normal varibale
variable "x" {
  default = 10
}

output "x" {
  value = var.x
}
#if our values has only varibale then var.x, if you want to pass multple string then "${var.x}"
output "x1" {
  value = "The value of x  is - ${var.x}"
}

#list variable

variable "y" {
  default = [1,0.2,false,"abc"]
}

output "y" {
  value = var.y[1]
}