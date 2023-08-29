resource "random_pet" "nested_00" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}