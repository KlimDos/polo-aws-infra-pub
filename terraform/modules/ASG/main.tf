resource "aws_launch_configuration" "lt-project" {
  #name_prefix   = "foobar"
  image_id      = "${var.ami}"
  instance_type = "${var.instance_type}"

  security_groups = [
    "${var.v_allow_22}",
    "${var.v_allow_4567}",
    "${var.v_allow_80}"
    
    ]
  key_name = "polo-us-east-1"
  user_data = "${file("app-deploy.sh")}"
  #load_balancers  = ["${var.elb_list}"]
  #load_balancers  = ["elb-0"]
}

resource "aws_autoscaling_group" "asg-project" {
  #availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  vpc_zone_identifier = ["${var.zone_list}"]
  load_balancers  = ["${var.elb_list}"]
  launch_configuration = "${aws_launch_configuration.lt-project.name}"
  
}