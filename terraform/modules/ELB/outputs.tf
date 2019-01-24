output "dns" {
  value = "${aws_elb.elb.dns_name}"
}
output "elb_name" {
  value = "${aws_elb.elb.name}"
}