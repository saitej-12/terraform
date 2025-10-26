resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids =[aws_security_group.allow_alls.id]
  tags = {
    Name = "HelloWorld"
    Terraform="true"
  }
}

resource "aws_security_group" "allow_alls" {
  name   = "allow_alls"


  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  tags= {
    Name = "allow_alls"
  }
}