provider "vault" {
  address = "https://vault.devopsbymanju.shop:8200"
  token = var.vault_token
}
variable "vault_token" {}

resource "vault_generic_secret" "vault_secrets" {
  path = "test/data/demo"
}