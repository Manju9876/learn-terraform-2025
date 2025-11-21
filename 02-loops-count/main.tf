resource "null_resource" "dummy" {
  count = length(var.x)
}

variable "x" {
  default = [1,2,3]
}

