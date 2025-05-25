resource "aws_instance" "web" {
  ami                     = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  security_groups =       [ "launch-wizard-2" ]
  tags = {
    Name = "Python"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web.id
  allocation_id = "eipalloc-02dc7f5155fb7b253"
}
