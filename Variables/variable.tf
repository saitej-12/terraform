variable "ami_id"{
  type = string
  default= "ami-09c813fb71547fc4f"
  
}
variable "instance_type" {
  type = string
  default = "t3.micro"
  
}
variable "ec2_tags" {
  type = map
  default = {
    Name = "terraform demo"
    Terraform = "true"
    Project = "JoinDevOps"
    Environment= "dev"
  }
}

variable "sg_name" {
  default="allow_alls"
  
}