
# creating aws-instance 
resource "aws_instance" "web" {
  ami             = var.image_id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.key-tf.key_name
  security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {
    Name = "aws-first-ec2"
  }

  # user_data = file("${path.module}/script.sh") ##  we will use file function here 
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install nginx -y
    echo "Hi sachin, how are you" >/var/www/html/index.html 
    EOF

  provisioner "file" {             # we use this because we want to add file  in code 3 type of provisioner     file,  local-exec,  remote-exec    
    source      = "readme.md"      # terraform machine
    destination = "/tmp/readme.md" # remote machine
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa")
      host        = self.public_ip
    }
  }


}



