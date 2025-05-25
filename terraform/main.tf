resource "aws_instance" "web" {
  ami                     = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  security_groups =       [ "launch-wizard-2" ]
  tags = {
    Name = "Python"
  }
}
