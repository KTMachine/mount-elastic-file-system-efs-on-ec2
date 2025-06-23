resource "aws_vpc" "james_brown_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "james_brown_vpc"
  }
}

resource "aws_internet_gateway" "get_on_up" {
  vpc_id = aws_vpc.james_brown_vpc.id

  tags = {
    Name = "get_on_up_internet_gateway"
  }
}