resource "aws_route_table_association" "test" {
  subnet_id      = aws_subnet.pub_sn1.id
  route_table_id = aws_route_table.public.id
}