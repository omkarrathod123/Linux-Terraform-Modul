resource "aws_security_group" "allow_All" {
  name = "Allow-All"
  description = "Allow Traffing will be allowed"
  vpc_id = aws_vpc.linux_cmd_vpc.id

  tags = {
    Name = "Allow-All"
  }
  depends_on = [ aws_vpc.linux_cmd_vpc ]
}
resource "aws_security_group_rule" "allow_Ingress_rule" {
  type = "ingress"
  from_port = 0
  to_port = 65535
  protocol = "tcp"
  security_group_id = aws_security_group.allow_All.id
  cidr_blocks = [ aws_vpc.linux_cmd_vpc.cidr_block ]
}
resource "aws_security_group_rule" "allow_egress_rule" {
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  security_group_id = aws_security_group.allow_All.id
  cidr_blocks = [ aws_vpc.linux_cmd_vpc.cidr_block ]
}
resource "aws_security_group_rule" "ssh_Ingress_rule" {
  type = "ingress"
  from_port = 0
  to_port = 65535
  protocol = "22"
  security_group_id = aws_security_group.allow_All.id
  cidr_blocks = [ aws_vpc.linux_cmd_vpc.cidr_block ]
}
resource "aws_security_group_rule" "ssh_egress_rule" {
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "22"
  security_group_id = aws_security_group.allow_All.id
  cidr_blocks = [ aws_vpc.linux_cmd_vpc.cidr_block ]
}