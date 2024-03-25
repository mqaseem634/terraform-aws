resource "aws_instance" "server01-west" {
  provider = aws.aws-west
  ami = "ami-08116b9957a259459"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet-west2a.id
  key_name = aws_key_pair.server01-key-west.key_name
}


resource "aws_key_pair" "server01-key-west" {
  provider = aws.aws-west
  key_name   = "terraform-aws-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJk4Ws6Mnh5sAAhj4dJxd/2TNURRkojVpOlLZ6yXDez0tQ3izWitazn7jyNl9WgP4qMJvJOsAZdg1oJXsjtoUT9gF9K3mA1EDzYlAhWbmXemrmTSbcSuzhQCKOO7TayhEhkkLNZk4QjMFGpNmKowByPA+TcLz1diLv4SQ88xkzETKNyRM7W3lSuv0AKPdLfT2DHs6avB1hOvPRECd7abFXWxHcUxhdOlwhYXGLJH+EfHHb0zRMjRikIIM71NI/uWrMIT7Jt3qy/XUeFlxYQEraV2Evec4zI9yBQm5nDfPxUwh8kYy+CdZ25EQekjMWeWY+a0TyUu2eMtuzbAP7ng0hkEk8y/yFq92w7I40zYHBPtK9QuuPEL1KOKZ9oN62PS1uNzXlBv0m7TJxrNEDwmB8AuUNynU9XzyL7GV9ozinIhSXBimY4s+MPV4OWkShsGljQRtH1H38tiRn3dGu5j/uNMWZnxF+/mJPpTn99n6uQLo7UtwJoPT40DM1UUFbobE= allakos\\mzalmai@mzalmai-sl4"
}

#########
resource "aws_instance" "server01-east" {
  provider = aws.aws-east
  ami = "ami-0b8b44ec9a8f90422"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet-east2a.id
  key_name = aws_key_pair.server01-key-east.key_name
}


resource "aws_key_pair" "server01-key-east" {
  provider = aws.aws-east
  key_name   = "terraform-aws-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJk4Ws6Mnh5sAAhj4dJxd/2TNURRkojVpOlLZ6yXDez0tQ3izWitazn7jyNl9WgP4qMJvJOsAZdg1oJXsjtoUT9gF9K3mA1EDzYlAhWbmXemrmTSbcSuzhQCKOO7TayhEhkkLNZk4QjMFGpNmKowByPA+TcLz1diLv4SQ88xkzETKNyRM7W3lSuv0AKPdLfT2DHs6avB1hOvPRECd7abFXWxHcUxhdOlwhYXGLJH+EfHHb0zRMjRikIIM71NI/uWrMIT7Jt3qy/XUeFlxYQEraV2Evec4zI9yBQm5nDfPxUwh8kYy+CdZ25EQekjMWeWY+a0TyUu2eMtuzbAP7ng0hkEk8y/yFq92w7I40zYHBPtK9QuuPEL1KOKZ9oN62PS1uNzXlBv0m7TJxrNEDwmB8AuUNynU9XzyL7GV9ozinIhSXBimY4s+MPV4OWkShsGljQRtH1H38tiRn3dGu5j/uNMWZnxF+/mJPpTn99n6uQLo7UtwJoPT40DM1UUFbobE= allakos\\mzalmai@mzalmai-sl4"
}
