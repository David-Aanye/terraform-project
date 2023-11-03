resource "aws_instance" "test" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.pri_sn1.id
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.test.id]
  associate_public_ip_address = false
  user_data                   = file("${path.module}/script.sh")

  tags = {
    Name = var.instance_name
  }

}


 