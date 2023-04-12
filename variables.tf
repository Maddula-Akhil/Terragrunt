variable "region" {
   type    = string
}


variable "ami" {
  type    = string
  default = "ami-00874d747dde814fa"
}

variable "aws_instance" {
  type    = string
  default = "My-planinstances"

}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_security_group" {
  type    = string
  default = "Plan-SG"
}


variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "app_name" {
  type    = string
  default = "plan"
}


variable "public_subnet_a_cidr" {
  type    = string
  default = "10.0.0.0/19"
}

variable "subnet_a_az" {
  default = "us-east-1a"
}
