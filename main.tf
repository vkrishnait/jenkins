provider "aws" {
  region = "ap-south-1"
}


  ## ubuntu image#####
  ## my ssh_key AWS_KV ########


resource "aws_instance" "krishna1" {
    ami = "ami-0d758c1134823146a"
     instance_type = "t2.micro"
     key_name = var.ssh_key
     tags = {
       "Name" = "VM8"
     }
  user_data = file("userdata.sh")
}
