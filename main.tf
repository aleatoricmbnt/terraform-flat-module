resource "random_pet" "resource" {
  keepers = {
    timestamp = timestamp()
  }
}