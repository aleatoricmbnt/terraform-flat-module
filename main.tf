resource "random_id" "timestamp" {
  keepers = {
    trigger = timestamp()
  }
  byte_length = 6
}

#commit_3
#dry_2
