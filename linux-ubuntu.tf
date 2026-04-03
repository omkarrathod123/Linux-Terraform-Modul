resource "aws_instance" "ubuntu_instance" {
  ami = data.aws_ami.letest_ubuntu.id
  instance_type = var.aws_instance
  key_name = var.key_name

  tags = var.tags
}