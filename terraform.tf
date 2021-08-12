## Create VPC ##
resource "aws_vpc" "terraform-vpc" {
  cidr_block       = "10.16.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"
  }
}

## Create Subnets ##
resource "aws_subnet" "terraform-subnet_1" {
  vpc_id     = "${aws_vpc.terraform-vpc.id}"
  cidr_block = "10.16.10.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "terraform-subnet_1"
  }
}

resource "aws_subnet" "terraform-subnet_2" {
  vpc_id     = "${aws_vpc.terraform-vpc.id}"
  cidr_block = "10.16.20.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "terraform-subnet_2"
  }
}

resource "aws_subnet" "terraform-subnet_3" {
  vpc_id     = "${aws_vpc.terraform-vpc.id}"
  cidr_block = "10.16.30.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name = "terraform-subnet_3"
  }
}
