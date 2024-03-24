resource "aws_vpc" "vpc-west" {
  cidr_block       = "10.5.0.0/16"
  provider = aws.aws-west
}

resource "aws_vpc" "vpc-east" {
  cidr_block       = "10.20.0.0/16"
  provider = aws.aws-east
}