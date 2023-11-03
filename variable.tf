
#ENVIRONMENT VARIABLES CREATED

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"

}

variable "vpc_name" {
  type        = string
  default     = "vpc_test"
  description = "vpc name"

}

variable "pri_sn1_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "private subnet1 cidr block"

}

variable "pri_sn2_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "private subnet2 cidr block"
}

variable "pri_sn1_name" {
  type        = string
  default     = "pri-subnet1"
  description = "private subnet1 name"

}

variable "pri_sn2_name" {
  type        = string
  default     = "pri-subnet2"
  description = "private subnet2 name"

}

variable "pub_sn1_cidr" {
  type        = string
  default     = "10.0.3.0/24"
  description = "public subnet1 cidr block"

}

variable "pub_sn2_cidr" {
  type        = string
  default     = "10.0.4.0/24"
  description = "public subnet2 cidr block"

}

variable "pub_sn1_name" {
  type        = string
  default     = "pub-subnet1"
  description = "public subnet1 name"

}

variable "pub_sn1_id" {
  type        = string
  default     = "pub-subnet1.id"
  description = "public subnet1 id"
}

variable "pub_sn2_name" {
  type        = string
  default     = "pub-subnet2"
  description = "public subnet2 name"

}

variable "zone" {
  type        = string
  default     = "us-west-2a"
  description = "Available zone for public-subnet1 to be deployed"

}

variable "zone1" {
  type        = string
  default     = "us-west-2d"
  description = "Available zone for public-subnet2 to be deployed"

}

variable "zone2" {
  type        = string
  default     = "us-west-2b"
  description = "Availability zone for ec2 instance"

}

variable "ami_id" {
  type        = string
  default     = "ami-0efcece6bed30fd98"
  description = "EC2 instance ami"

}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"

}

variable "instance_name" {
  type        = string
  default     = "public-test-instance"
  description = "EC2 instance name"

}

variable "aws_internet_gateway_name" {
  type        = string
  default     = "public-internet-gateway"
  description = "internet gateway name"

}

variable "route_table_private_name" {
  type        = string
  default     = "route_table_pri"
  description = "Route table for private network"

}

variable "route_table_public_name" {
  type        = string
  default     = "route_table_pub"
  description = "Route table for public network"

}

variable "key_name" {
  type        = string
  default     = "linux-machine"
  description = "EC2 instance key pair"
}

variable "security_group_name" {
  type        = string
  default     = "test-security-group"
  description = "EC2 security group"

}

variable "region" {
  default = "us-west-2"

}

variable "nat-gateway-name" {
  type        = string
  default     = "pub-nat-gateway"
  description = "Public subnet nat-gateway"

}


variable "elb-sg-name" {
  type        = string
  default     = "ELB-security-group"
  description = "ELB security group name"

}

variable "ssh_security_group" {
  type        = string
  default     = "SSH-security-group"
  description = "SSH security group"
}

variable "elb_target_group_name" {
  type        = string
  default     = "test_elb_tg"
  description = "ELB target group name"
}

variable "elb_arn_name" {
  type        = string
  default     = "aws_lb.application_load_balancer.arn"
  description = "ELB arn"

}

variable "environment" {
  type        = string
  description = "Environement within which the infrastructure exist"
  default     = "test"
}

 