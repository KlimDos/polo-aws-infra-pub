output "external_ip" {
  #value = "module.EC2_instances.external_ip"
  value = "${ module.EC2_instances.external_ip }"
}

output "SG_allow_22_id" {
  value = "${ module.Security_Groups.SG_allow_22_id}"
}

output "SG_allow_80_id" {
  value = "${ module.Security_Groups.SG_allow_80_id}"
}

output "SG_allow_4567_id" {
  value = "${ module.Security_Groups.SG_allow_4567_id}"
}

output "dns" {
  value = "${module.ELB_classic.dns}"
}
