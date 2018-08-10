provider "aws" {
  access_key = "AKIAJEGWEUXM7XB3RG7Q"
  secret_key = "4Md8dXtT5moxqtR7zRq+abzWbm33/4gUvwUUBdub"
  region     = "ap-south-1"
}
resource "aws_instance" "example"{
  count = 1
  ami = "ami-d783a9b8"
  instance_type = "t2.micro"
  subnet_id = "subnet-96e0d7db"
  tags {
    names = "example-${count.index}"
  }
}
