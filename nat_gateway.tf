
resource "aws_nat_gateway" "test" {
  allocation_id = aws_eip.test.id

  subnet_id = aws_subnet.pub_sn1.id

  tags = {
    Name = var.nat-gateway-name
  }

}