terraform {
  required_providers {
    local = {
      source = "hashocorp/local"
      version = ">= 2.5"
      }
  }
}
resource "local_file" "example" {
  filename = "$path.module/hello_world.txt"
  content = "This file was created by Terrafrom"
}
output "file_path" {
value = local_file.example.filename
}
