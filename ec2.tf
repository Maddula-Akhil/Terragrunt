resource "aws_instance" "ec2_bastion" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  subnet_id              = aws_subnet.public_a.id

  tags = {
    Name = var.aws_instance
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = var.aws_security_group
  description = "Security Group for Bastion Server"
  vpc_id      = aws_vpc.primary_vpc.id

  ingress {

    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

