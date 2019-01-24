variable "VPC" {
  description = "VPC"
  #default = "vpc-7bb36f03" # us-west-2
  default = "vpc-42df6f38" # us-east-1
}

variable "region" {
  description = "Region"
  default     = "us-east-1"
}

#variable "ami" {
#  description = "aws image to use"
#  default = "ami-032509850cf9ee54e"
#}
# unused
#variable "project" {
#  description = "Project ID"
#  default     = "infra-220716"
#}
# unused
#variable "public_key_path" {
#  description = "Path to the public key used for ssh access"
#  default = "~/.ssh/id_rsa.pub"
#}
# unused
#variable "app_disk_image" {
#  description = "App disk image"
#  default     = "reddit-app-basic"
#}
# unused
#variable "db_disk_image" {
#  description = "Data Base disk image"
#  default     = "reddit-db"
#}