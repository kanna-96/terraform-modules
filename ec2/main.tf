provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform-instance-9" {
  ami = var.my-ami
  instance_type = var.my-instance_type
  key_name = var.my-key-pair
  tags = {
    Name = var.ec2-Name
  }
  availability_zone = var.my-az
}
