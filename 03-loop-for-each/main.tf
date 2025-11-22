terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
resource "null_resource" "test" {
  for_each = var.x
  provisioner "local-exec" {
    command = "echo value of ${each.key} = ${each.value} "
  }
}

variable "x" {
  default = {
    i = 10
    j = 20
  }
}