resource "aws_instance" "terraform" {
  for_each = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value
  vpc_security_group_ids =[aws_security_group.allow_all2.id]
  tags = {
    Name = each.key
    Terraform="true"
  }
}

resource "aws_security_group" "allow_all2" {
  name   = "allow_all2"


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