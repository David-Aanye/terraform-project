resource "aws_route_table" "private" {
  vpc_id = aws_vpc.test.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.test.id

  }
  tags = {
    Name = var.route_table_private_name
  }
}