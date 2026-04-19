variable "region" {
  type = string
  default = "ap-south-1"
  description = "Default region is mumbai"
}
variable "aws_instance" {
  type = string
  default = "t3.micro"
  description = "Default instance is t3.micro"
}
variable "tags_server" {
  type = map(string)
  default = {
    "Name" = "Ubuntu-24.04"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}
variable "key_name" {
  type = string
  default = "Practic"
  description = "Default keyname is Practic"
}
variable "cidr_block" {
  type = string
  default = "198.162.0.0/16"
}
variable "tags_vpc" {
  type = map(string)
  default = {
    "Name" = "linux_cmd"
    "Environmment" = "Developement"
    "Owner" = "Omkar Rathod"
  }
}