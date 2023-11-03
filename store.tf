//creation of ssm parameters for some values

resource "aws_ssm_parameter" "ami" {
  name  = "/var.environment/var.region/var.ami_id"
  type  = "String"
  value = var.ami_id

}

resource "aws_ssm_parameter" "vpc_id" {
  name  = "/var.environment/var.region/var.vpc_name"
  type  = "String"
  value = aws_vpc.test.id
}

resource "aws_ssm_parameter" "pri_subnets_ids" {
  name  = "/var.environment/var.region/var.pri_sn1_name/var.pri_sn2_name"
  type  = "String"
  value = join(",", [aws_subnet.pri_sn1.id, aws_subnet.pri_sn2.id])

}

resource "aws_ssm_parameter" "pub_subnets_ids" {
  name  = "/var.environment/var.region/var.pub_sn1_name/var.pub_sn2_name"
  type  = "String"
  value = join(",", [aws_subnet.pub_sn1.id, aws_subnet.pub_sn2.id])

}