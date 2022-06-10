resource "random_pet" "resource" {
  keepers = {
    timestamp = timestamp()
    number = var.user_number
  }
}