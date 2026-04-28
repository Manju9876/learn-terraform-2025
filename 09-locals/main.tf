variable "numbers" {
  default = {
    one = "100"
    two = "200"
    three = "300"
  }
}
 locals {
   simple = [ for i,j in var.numbers : i ]
 }
output "sample" {
  value = local.simple
}