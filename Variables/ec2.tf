resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids =[aws_security_group.allow_alls.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_alls" {
  name   = var.sg_name


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