variable "numbers" {
  default = {
    one = "100"
    two = "200"
    three = "300"
  }
}

output "sample" {
  value = [ for i,j in var.numbers : i ]
}