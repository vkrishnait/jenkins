provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "JenkinSG" {
  name = "Jenkin SG1"
  }
  ## ubuntu image#####
  ## my ssh_key AWS_KV ########


resource "aws_instance" "krishna1" {
    ami = ami-0d758c1134823146a
     instance_type = t2.micro
     key_name = var.ssh_key
     security_groups = Jenkin SG1
     tags = {
       "Name" = "VM8"
     }
  user_data = file("userdata.sh")
}
