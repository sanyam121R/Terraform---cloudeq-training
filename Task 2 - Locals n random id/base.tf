
# Playing around with locals
resource "local_file" "trying_locals" {
  filename = "./files/a.txt"
  content  = local.name
}

locals {
  name              = "Hi Sanyam here, peeking into the locals using terraform."
  brief_description = "aslfjdaopweiu fcmasdpaoemi amfcps skpmcp pjc."
}


# random resouce for random content
resource "local_file" "trying_random_id" {
  filename = "./files/${random_id.random_file_name.hex}"
  content  = random_id.random_file_name.hex
}

resource "local_file" "trying_random_id_for_py_file" {
  filename = "./files/${random_id.random_file_name.dec}.py"
  content  = random_id.random_file_name.hex
}

resource "random_id" "random_file_name" {
  byte_length = 8
}