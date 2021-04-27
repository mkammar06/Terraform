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

# output "aliazs"{
# value = data.aws_availability_zones.aliazs
# }