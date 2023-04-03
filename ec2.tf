resource "aws_instance" "ec2_bastion" {
  ami                    = "ami-00c39f71452c08778"
  instance_type          = "t2.micro"
  #key_name               = "bastion-server"
  #vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  #subnet_id              = aws_subnet.public_a.i
  #tags                   = king
}

