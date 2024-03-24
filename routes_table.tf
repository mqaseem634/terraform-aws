resource "aws_route_table" "routes-west" {
  provider = aws.aws-west
  vpc_id = aws_vpc.vpc-west.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.igw-west.id
  }

  tags = {
    Name = "routes-west"
  }
}


resource "aws_route_table" "routes-east" {
  provider = aws.aws-east
  vpc_id = aws_vpc.vpc-east.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.igw-east.id
  }

  tags = {
    Name = "routes-east"
  }
}