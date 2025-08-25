provider "local" {}

resource "local_file" "hello" {
  content  = "hello terraform"
filename = "${path.module}/hello.txt"
}
