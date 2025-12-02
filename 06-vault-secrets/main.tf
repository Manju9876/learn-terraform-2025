terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}
provider "vault" {
  address = "http://vault.devopsbymanju.shop:8200"
  token = var.vault_token
}
variable "vault_token" {}

data "vault_generic_secret" "secret_data" {
  path = "test/demo"
}

resource "local_file" "sample" {
  filename = "/tmp/sample.txt"
  content = data.vault_generic_secret.secret_data
}