resource "aws_subnet" "subnet-west2a" {
  provider = aws.aws-west
  vpc_id     = aws_vpc.vpc-west.id
  cidr_block = "10.5.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-subnet-west2a"
  }
}

resource "aws_subnet" "subnet-west2b" {
  provider = aws.aws-west
  vpc_id     = aws_vpc.vpc-east.id
  cidr_block = "10.5.20.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name = "tf-subnet-west2b"
  }
}

resource "aws_subnet" "subnet-east2a" {
  provider = aws.aws-east
  vpc_id     = aws_vpc.vpc-east.id
  cidr_block = "10.20.10.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "tf-subnet-east2a"
  }
}

resource "aws_subnet" "subnet-east2b" {
  provider = aws.aws-east
  vpc_id     = aws_vpc.vpc-east.id
  cidr_block = "10.20.20.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "tf-subnet-east2b"
  }
}


