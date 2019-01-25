resource "aws_instance" "app" {
  #ami           = "${data.aws_ami.ubuntu.id}"
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  security_groups = [
    "allow_22",
    "allow_80",
    "allow_4567",
  ]

  key_name = "polo-us-east-1-1"

  tags = {
    Name = "app-${var.app_ver}"
  }

  #user_data = "${file("apache.sh")}"
  #user_data = "${var.env == "prod" ? file("app-deploy.sh") : EMPTY }"
  #user_data = "${file("app-deploy.sh")}"
  count = "${1-var.ASG-enabled}"
}
