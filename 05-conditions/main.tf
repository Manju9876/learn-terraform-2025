
resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.x == "10" ? "the values is 10" : var.x
}

variable "x" {
  default = 10
}