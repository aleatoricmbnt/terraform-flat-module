resource "null_resource" "env_vars" {
  triggers = {
    trigger = timestamp()
  }
  provisioner "local-exec" {
    command = "env >> env_vars_${timestamp()}.txt"
  }
}