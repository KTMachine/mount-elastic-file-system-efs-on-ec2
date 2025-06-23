resource "aws_key_pair" "aretha_franklin_key" {
  key_name   = var.key_name
  public_key = tls_private_key.rock_steady.public_key_openssh
}

resource "tls_private_key" "rock_steady" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "respect_key" {
  content         = tls_private_key.rock_steady.private_key_pem
  filename        = "${var.key_name}.pem"
  file_permission = "0400"
}