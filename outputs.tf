


output "vcp_sg_id" {
  description = "VCP security group id"
  value       = aws_security_group.test.id

}

output "ELB_arn" {

  description = "The ARN of the load balancer"
  value       = aws_lb.application_load_balancer.arn
}

output "ELB_dns_name" {

  description = "The DNS name of the load balancer"
  value       = aws_lb.application_load_balancer.dns_name
}

output "ELB_sg_id" {

  description = "ELB security group id"
  value       = aws_security_group.elb_security_grp.id

} 

output "instance_private_ip" {
  description = "Private IP address for instance"
  value       = aws_instance.test.private_ip
}
