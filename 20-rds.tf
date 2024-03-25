resource "aws_db_subnet_group" "subnet_group_west" {
  provider = aws.aws-west
  name       = "terraform"
  subnet_ids = [aws_subnet.subnet-west2a.id, aws_subnet.subnet-west2b.id]
}


resource "aws_db_subnet_group" "subnet_group_east" {
  provider = aws.aws-east
  name       = "terraform"
  subnet_ids = [aws_subnet.subnet-east2a.id, aws_subnet.subnet-east2b.id]
}
