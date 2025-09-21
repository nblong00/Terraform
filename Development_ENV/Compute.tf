data "aws_ami" "base_ami_id" {
    owners           = ["amazon"]
    most_recent      = true
  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "ec2" {
  ami = data.aws_ami.base_ami_id.id
  instance_type = "t2.micro"
  count = 3
  tags = {
    name = "Dev_Instance[${count.index}]"
  }
}