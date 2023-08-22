resource "random_pet" "keeped_by_time" {
  keepers = {
    time = timestamp()
    var = var.trigger
  }
}

data "null_data_source" "some_pairs" {
  inputs = {
    single-key = "single value"
  }
}

variable "rigger" {
  
}

output "random" {
  value = data.null_data_source.some_pairs.random
}

output "value" {
  value = data.null_data_source.some_pairs["single-key"]
}