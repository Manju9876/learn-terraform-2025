
provider "vault" {
  address = "https://vault.devopsbymanju.shop:8200"
  token = var.vault_token
}
variable "vault_token" {}

data "vault_generic_secret" "vault_secrets" {
  path = "test/demo"
}

resource "local_file" "demo" {
  filename = "/tmp/sample.txt"
  content = data.vault_generic_secret.vault_secrets["username"]
}