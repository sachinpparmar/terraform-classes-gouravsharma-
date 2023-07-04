# taking output
output "securitygroupdetails" {
  value = aws_security_group.allow_tls.id
}
output "securitygroupname" {
  value = aws_security_group.allow_tls.name
}


output "public-ip" {
  value = aws_instance.web.public_ip
}

output "keyname" {
  value = aws_key_pair.key-tf.key_name

}
