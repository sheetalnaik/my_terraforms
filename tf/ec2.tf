provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_security_group" "default"{
    name="terraform-sg"
    description="Created by terraform"
 
    ingress{
        from_port = 22
        to_port = 22
        protocol= "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
 
}

resource "aws_instance" "ssn_web"{
    ami           = "${var.aws_ami}" 
    instance_type = "${var.instance_type}"
    security_groups= ["${aws_security_group.default.name}"]
    
   tags = {
    Name = "usingterraform"
  }
 
}

