resource "null_resource" "name" {
  triggers = {
    time = timestamp()
  }
}

resource "random_pet" "some" {
  keepers = {
    time = timestamp()
  }
}
