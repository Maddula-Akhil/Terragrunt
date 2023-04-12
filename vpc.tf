resource "aws_vpc" "primary_vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = "true"

  tags = {
    Name = var.app_name
  }
}



resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.primary_vpc.id
  cidr_block              = var.public_subnet_a_cidr
  availability_zone       = var.subnet_a_az
  map_public_ip_on_launch = "true"

  tags = {
    Name = "${var.app_name}_public_subnet_a"
  }
}

