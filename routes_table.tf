resource "aws_route_table" "routes-west" {
  provider = aws.aws-west
  vpc_id = aws_vpc.vpc-west.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-west.id
  }

  tags = {
    Name = "routes-west"
  }
}

resource "aws_route_table_association" "route-assoc-west2a" {
  provider = aws.aws-west
  subnet_id      = aws_subnet.subnet-west2a.id
  route_table_id = aws_route_table.routes-west.id
}

resource "aws_route_table_association" "route-assoc-west2b" {
  provider = aws.aws-west
  subnet_id      = aws_subnet.subnet-west2b.id
  route_table_id = aws_route_table.routes-west.id
}


###############################


resource "aws_route_table" "routes-east" {
  provider = aws.aws-east
  vpc_id = aws_vpc.vpc-east.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-east.id
  }

  tags = {
    Name = "routes-east"
  }
}

resource "aws_route_table_association" "route-assoc-east2a" {
  provider = aws.aws-east
  subnet_id      = aws_subnet.subnet-east2a.id
  route_table_id = aws_route_table.routes-east.id
}

resource "aws_route_table_association" "route-assoc-east2b" {
  provider = aws.aws-east
  subnet_id      = aws_subnet.subnet-east2b.id
  route_table_id = aws_route_table.routes-east.id
}