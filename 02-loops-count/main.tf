# resource "null_resource" "dummy" {
#   count = 10
#
# }

variable "x" {
  default = [1,2,3]
}

output "x" {
  value = var.x
}