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