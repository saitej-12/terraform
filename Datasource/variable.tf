variable "instances" {
  # default= ["mongoDB", "redis", "sql", "rabbitmq", "user","cart","shipping","payment", "frontend","catalogue"]
  default = {
    mongoDB = "t3.micro"	
redis = "t3.micro"	
sql = "t3.micro"	
# rabbitmq = "t3.micro"	
# user = "t3.micro"	
# cart = "t3.micro"	
# shipping = "t3.micro"	
# payment = "t3.micro"	
# frontend = "t3.micro"	
# catalogue] = "t3.micro"	

  }
}

variable "zone_id" {
  default = "Z06342332M1VGYIZ85CLT"
  
}
variable "domain_name" {
  default = "sjleader.space"
  
}