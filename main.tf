resource "null_resource" "timestamp" {
  triggers = {
    trigger = timestamp()
  }
}