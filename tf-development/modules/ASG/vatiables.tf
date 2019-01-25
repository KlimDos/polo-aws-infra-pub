variable "ami" {
  description = "aws image to use"
  default     = "ami-9887c6e7"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "zone_list" {
 default = ["subnet-1a98ac50, subnet-66b8db48, subnet-7b97f627, subnet-ba97c9b5, subnet-c40ea6fa, subnet-e6b1d581"]  
}

variable "app_ver" {
  description = "app version"
  default     = "1.0"
}



variable "v_allow_4567" {
  type = "string"
}
variable "v_allow_22" {
  type = "string"
}
variable "v_allow_80" {
  type = "string"
}
variable "ASG-enabled" {  
}
