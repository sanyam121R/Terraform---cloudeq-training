
# learning variables 
resource "local_file" "foo" {
  filename = var.file_name
  content  = var.instance_name
}

resource "local_file" "using_var_types" {
  filename = var.ami["us-west-1"]
  content  = var.region
}

output "filename-from-foo" {
  value = local_file.foo.filename
}