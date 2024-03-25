resource "aws_security_group" "Allow_mysql-west" {
  provider = aws.aws-west
  name = "allow_mysql"
  vpc_id = aws_vpc.vpc-west.id

  ingress {
    description      = "MySQL from Internet"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["165.0.0.0/8"]
  }
}


resource "aws_security_group" "Allow_mysql-east" {
  provider = aws.aws-east
  name = "allow_mysql"
  vpc_id = aws_vpc.vpc-east.id

  ingress {
    description      = "MySQL from Internet"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["165.0.0.0/8"]
  }
}