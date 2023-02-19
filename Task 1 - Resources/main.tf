resource "local_file" "try" {
  content  = "hey there"
  filename = "./files/a.txt"
}

resource "local_file" "carzy" {
  content  = "Crazy there"
  filename = "./files/f.txt"
}

resource "local_file" "stan" {
  content  = "Appreciate you bro"
  filename = "./files/s.txt"
}

resource "local_file" "foo" {
  filename        = "./files/foo_names.txt"
  file_permission = 444
  content         = "Vikrant, Raj, Jeph, Jack"
}