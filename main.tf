resource "random_id" "timestamp" {
  keepers = {
    trigger = timestamp()
  }
  byte_length = 6
}
