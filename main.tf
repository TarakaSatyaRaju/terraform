provider "aws" {
region = "ap-south-1"
access_key = "AKIASK65QSUXNUSRG6HS"
secret_key = "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"
}

resource "aws_instance" "hai"{
ami = var.a
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo_sg.id]
tags = var.b
}

variable "b" {
type = map(string)
default = {
project = "swiggy"
enviornment = "prod"
Name = " Satya"
}
}
variable "a" {
type = string 
}


