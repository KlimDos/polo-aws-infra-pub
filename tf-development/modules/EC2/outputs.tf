output "external_ip" {
  value = "${aws_instance.app.*.public_ip}"
}

output "instance_ids" {
  value = ["${aws_instance.app.*.id}"]
}
