resource "aws_vpc" "my_vpc" {
  cidr_block           = "10.0.0.0/16" # Adjust the CIDR block as needed
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24" # Adjust the CIDR block as needed
  availability_zone       = "us-east-1a"  # Adjust the availability zone
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.2.0/24" # Adjust the CIDR block as needed
  availability_zone       = "us-east-1b"  # Adjust the availability zone
  map_public_ip_on_launch = true
}
