resource "aws_security_group" "allow_80" {
  name        = "allow_80"
  description = "Allow 80 inbound traffic"
  vpc_id      = "${var.VPC}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

    #prefix_list_ids = ["pl-12c4e678"]
  }
}

resource "aws_security_group" "allow_22" {
  name        = "allow_22"
  description = "Allow 22 inbound traffic"
  vpc_id      = "${var.VPC}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_4567" {
  name        = "allow_4567"
  description = "Allow 4567 inbound traffic"
  vpc_id      = "${var.VPC}"

  ingress {
    from_port   = 4567
    to_port     = 4567
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_8080" {
  name        = "allow_8080"
  description = "Allow 8080 inbound traffic"
  vpc_id      = "${var.VPC}"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
