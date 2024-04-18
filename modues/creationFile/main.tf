resource "local_file" "antonio_file" {
  content  = "This is a simple file"
  filename = "${var.path_at_file}/antonio.bar"
  file_permission = "770"
}