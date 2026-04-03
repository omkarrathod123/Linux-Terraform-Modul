variable "region" {
  type = string
  default = "ap-south-1"
  description = "Default region is mumbai"
}
variable "aws_instance" {
  type = string
  default = "t2.micro"
}
variable "tags" {
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
}