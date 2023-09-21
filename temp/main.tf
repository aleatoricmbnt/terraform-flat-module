resource "random_pet" "nested_00" {
count = 2
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

# comment to create PR
