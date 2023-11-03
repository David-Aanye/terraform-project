//Create two public and two private subnets

resource "aws_subnet" "pri_sn1" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.pri_sn1_cidr
  map_public_ip_on_launch = false
  availability_zone       = var.zone

  tags = {
    Name = var.pri_sn1_name
  }
}

resource "aws_subnet" "pri_sn2" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = var.pri_sn2_cidr
  availability_zone = var.zone1

  tags = {
    Name = var.pri_sn2_name
  }
}

resource "aws_subnet" "pub_sn1" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.pub_sn1_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.zone

  tags = {
    Name = var.pub_sn1_name
  }

}

resource "aws_subnet" "pub_sn2" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = var.pub_sn2_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.zone1
  tags = {
    Name = var.pub_sn2_name
  }

}
