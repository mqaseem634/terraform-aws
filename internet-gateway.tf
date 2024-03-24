resource "aws_internet_gateway" "igw-west" {
  #vpc_id = aws_vpc.main.id
  provider = aws.aws-west
  tags = {
    Name = "tf-igw-west"
  }
}

resource "aws_internet_gateway_attachment" "igw-attach-west" {
  internet_gateway_id = aws_internet_gateway.igw-west.id
  vpc_id              = aws_vpc.vpc-west.id
}


###################
resource "aws_internet_gateway" "igw-east" {
  #vpc_id = aws_vpc.main.id
  provider = aws.aws-east
  tags = {
    Name = "tf-igw-east"
  }
}

resource "aws_internet_gateway_attachment" "igw-attach-east" {
  internet_gateway_id = aws_internet_gateway.igw-east
  vpc_id              = aws_vpc.vpc-east.id
}