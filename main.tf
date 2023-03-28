resource "random_id" "timestamp" {
  keepers = {
    trigger = timestamp()
  }
  byte_length = 6
}

#commit_2
#dry_1
