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
  region                  = "${var.region}"
  shared_credentials_file = "/home/sasha/.aws/creds"
  #profile                 = "customprofile"
}

module "Security_Groups" {
  source = "modules/SG"
  VPC    = "${var.VPC}"
  
}

/*module "EC2_instances" {
  source = "modules/EC2"
  ami    = "ami-9887c6e7" # CentOS Linux 7 x86_64 HVM EBS ENA 1805 ### us-east-1
  #ami = "ami-3ecc8f46" # CentOS Linux 7 x86_64 HVM EBS ENA 1805 ### us-west-2 
}
*/
module "ASG-project-one" {
  source = "modules/ASG"
  elb_list = ["${module.ELB_classic.elb_name}"]
  v_allow_80 = "${module.Security_Groups.SG_allow_80_id}"
  v_allow_4567 = "${module.Security_Groups.SG_allow_4567_id}"
  v_allow_22 = "${module.Security_Groups.SG_allow_22_id}"
  
}

module "ELB_classic" {
  source  = "modules/ELB"
  #inst_id = ["${module.EC2_instances.instance_ids}"]

}
