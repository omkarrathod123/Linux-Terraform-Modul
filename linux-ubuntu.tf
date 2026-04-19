resource "aws_instance" "ubuntu_instance" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance
  key_name = var.key_name
  subnet_id = aws_subnet.linux_cmd_public_subnet.id
  security_groups = [ aws_security_group.allow_All.id ]

  tags = var.tags_server
  depends_on = [ aws_security_group.allow_All ]
}
output "PubIP" {
  description = "This variable will show Public Ip Address of server"
  value = aws_instance.ubuntu_instance.public_ip
}