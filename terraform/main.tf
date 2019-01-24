terraform {
  backend "s3" {
    bucket = "polo-tf-state-bucket-us-east-1"
    key    = "terraform.tfstate"
    #region = "${var.region}"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "/home/sasha/.aws/creds"
  #profile                 = "customprofile"
}
module "Security_Groups" {
  source = "modules/SG"
  VPC = "${var.VPC}"  
}
module "EC2_instances" {
  source = "modules/EC2"
  ami = "ami-9887c6e7" # CentOS Linux 7 x86_64 HVM EBS ENA 1805 ### us-east-1
  #ami = "ami-3ecc8f46" # CentOS Linux 7 x86_64 HVM EBS ENA 1805 ### us-west-2 
}
module "ELB_classic" {
  source = "modules/ELB"
  inst_id = ["${module.EC2_instances.instance_ids}"]
  
}

