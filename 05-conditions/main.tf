terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.x == "10" ? "the values is 10" : var.x
}

variable "x" {
  default = 10
}

resource "null_resource" "tst" {
  count = var.x == "10" ? 0 : 1
}