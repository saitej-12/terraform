variable "Environment" {
  default = "dev"
}

variable "instances" {
  default= ["mongoDB", "redis", "sql", 
  "catalogue"]
}

variable "zone_id" {
  default = "Z06342332M1VGYIZ85CLT"
  
}
variable "domain_name" {
  default = "sjleader.space"
  
}