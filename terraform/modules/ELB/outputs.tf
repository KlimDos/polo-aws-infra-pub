output "dns" {
  value = "${aws_elb.elb.dns_name}"
}
#output "this_elb_dns_name" {
#  description = "The DNS name of the ELB"
#  value       = "${module.elb.this_elb_dns_name}"
#}

#output "this_elb_dns_name" {
#  description = "The DNS name of the ELB"
#  value       = "${element(concat(aws_elb.this.*.dns_name, list("")), 0)}"
#}

output "child_foo" {
  value = "foobar"
}