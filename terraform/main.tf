provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "example" {
  ami           = "ami-07c8c1b18ca66bb07" # Replace with your AMI ID
  instance_type = "t2.micro"              # Free tier eligible

  subnet_id = aws_subnet.public.id

  tags = {
    Name = "HelloWorldInstance"
  }
}

