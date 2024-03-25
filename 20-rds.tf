resource "aws_db_subnet_group" "subnet_group_west" {
  provider = aws.aws-west
  name       = "terraform"
  subnet_ids = [aws_subnet.subnet-west2a.id, aws_subnet.subnet-west2b.id]
}


resource "aws_db_instance" "rdsdb-west" {
  provider = aws.aws-west
  allocated_storage    = 10
  db_name              = "terraform"
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t4g.micro"
  username             = "allakos"
  password             = "allakos123"
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.subnet_group_west.name
  vpc_security_group_ids = [ aws_security_group.Allow_mysql-west.id ]
}

resource "aws_db_subnet_group" "subnet_group_east" {
  provider = aws.aws-east
  name       = "terraform"
  subnet_ids = [aws_subnet.subnet-east2a.id, aws_subnet.subnet-east2b.id]
}



resource "aws_db_instance" "rdsdb-east" {
  provider = aws.aws-east
  allocated_storage    = 10
  db_name              = "terrafom"
  engine               = "mysql"
  engine_version       = "8.0.35"
  instance_class       = "db.t4g.micro"
  username             = "allakos"
  password             = "allakos123"
  #parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.subnet_group_east.name
  vpc_security_group_ids = [ aws_security_group.Allow_mysql-east.id ]
}