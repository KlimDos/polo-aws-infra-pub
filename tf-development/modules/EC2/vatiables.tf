variable "ami" {
  description = "aws image to use"
  default     = "ami-032509850cf9ee54e"
}

variable "app_ver" {
  description = "app version"
  default     = "1.0"
}

variable "sg_list" {
  description = "list of security groups assigned to the instance"
  type = "list"
}

variable "ASG-enabled" {  
}
