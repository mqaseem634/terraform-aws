resource "aws_vpc" "vpc-west" {
  cidr_block       = "10.5.0.0/16"
  provider = aws.aws-west
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "tf-aws-west"
  }
}

resource "aws_vpc" "vpc-east" {
  cidr_block       = "10.20.0.0/16"
  provider = aws.aws-east
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "tf-aws-east"
  }
}