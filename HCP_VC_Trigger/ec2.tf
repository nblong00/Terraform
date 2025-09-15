resource "aws_instance" "myec2" {
  ami                    = "ami-04e5276ebb8451442"
  instance_type          = "t2.micro"
  }
