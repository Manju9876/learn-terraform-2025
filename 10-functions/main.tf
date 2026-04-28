variable "lower" {
  default = "hello world"
}

output "upper" {
  value = upper(var.lower)
}