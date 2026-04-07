resource "aws_vpc" "linux_cmd_vpc" {
  cidr_block = var.cidr_block

  tags = var.tags_vpc
}
resource "aws_internet_gateway" "linux_cmd_igw" {
  vpc_id = aws_vpc.linux_cmd_vpc.id

  tags = var.tags_vpc
}
resource "aws_route_table" "linux_cmd_public_rt" {
  vpc_id = aws_vpc.linux_cmd_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.linux_cmd_igw.id
  }
  tags = var.tags_vpc
}
resource "aws_subnet" "linux_cmd_public_subnet" {
  vpc_id = aws_vpc.linux_cmd_vpc.id
  cidr_block = "198.162.1.0/24"

  tags = var.tags_vpc
}
resource "aws_route_table_association" "linux_cmd_rt_association" {
  subnet_id = aws_subnet.linux_cmd_public_subnet.id
  route_table_id = aws_route_table.linux_cmd_public_rt.id
}