# terraform-flat-module
Configuration structure:
```
📂 terraform-flat-module
├── 📄 main.tf
├── 📄 README.md
├── 📄 file.dummy
└── 📂 temp
    ├── 📄 main.tf
    └── 📄 README.md
```

Top level `README.md` contains information about the top-level configuration.



## Configuration

Top-level `main.tf` has the following code:
```
resource "null_resource" "show_scalr_env_vars" {
  triggers = {
    time = timestamp()
  }  
  provisioner "local-exec" {
    command = "printenv | grep SCALR"
  }
}

resource "random_string" "strings" {
  count = 4
  length = 8
  keepers = {
    time = timestamp()
  }
  depends_on = [ null_resource.show_scalr_env_vars ]
}

data "null_data_source" "some_values" {
  inputs = {
    first_pair = concat(
      random_string.strings[0],
      random_string.strings[1],
    )
    second_pair = concat(
      random_string.strings[2],
      random_string.strings[3],
    )
  }
}

data "archive_file" "dummy" {
  type        = "zip"
  source_file = "file.dummy"
  output_path = "file_dummy.zip"
  depends_on = [ data.null_data_source.some_values ]
}

resource "null_resource" "show_files_after_packing" {
  triggers = {
    archive = data.archive_file.dummy.id
  }
  provisioner "local-exec" {
    command = "ls -la"
  }
}

module "temp" {
  source = "./temp"
  custom_trigger = var.top-level-trigger
}

variable "top-level-trigger" {
  default = "lol"
}

output "all_strings_from_data" {
  value = jsonencode({
    first_pair = null_data_source.some_values.outputs["first_pair"]
    second_pair = null_data_source.some_values.outputs["second_pair"]
  })
}
```

As seen in the template, child `temp` module is called inside the top one.