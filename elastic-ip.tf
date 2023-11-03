
resource "aws_eip" "test" {
  domain     = "vpc"
  depends_on = [aws_internet_gateway.test]


}