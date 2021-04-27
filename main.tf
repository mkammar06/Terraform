provider "aws" {
  region = "us-east-1"
}
variable "ami_id" {
    default = "ami-0742b4e673072066f"
    type = string
    description = "AMI ID for EC2Instance"
}
variable "instance_count" {
    default = 2
    type = number
    description = "No. of instance"
}
variable "instance_name_Lst" {
    default = ["ManjunathEc2-Web","ManjunathEc2-App"]
}
resource "aws_instance" "myec2" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = "t2.micro"
  tags = {
    "Name" = var.instance_name_Lst[count.index]
  }
}
output "my_ec2_instance_ip" {
    value = aws_instance.myec2[*].public_ip
}