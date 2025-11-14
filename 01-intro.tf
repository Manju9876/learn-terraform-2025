provider "local_file" {}

resource "local_file" "foo" {
  content  = "Hello world"
  filename = "/tmp/foo.bar"
}