# creating ssh-key for instance  login   for this we use   ssh-keygen  and create key in 

resource "aws_key_pair" "key-tf" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_rsa.pub")
}
