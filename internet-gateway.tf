resource "aws_internet_gateway" "igw-west" {
  #vpc_id = aws_vpc.main.id
  provider = aws.aws-west
  tags = {
    Name = "tf-igw-west"
  }
}

resource "aws_internet_gateway" "igw-east" {
  #vpc_id = aws_vpc.main.id
  provider = aws.aws-east
  tags = {
    Name = "tf-igw-east"
  }
}