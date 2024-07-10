provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_instance" "example" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"    

  subnet_id = aws_subnet.public.id
  associate_public_ip_address = true

  tags = {
    Name = "HelloWorldInstance2"
  }
}


