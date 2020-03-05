provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/gokula/.aws/credentials"
  profile = "mfa"
}
resource "aws_instance" "example" {
  ami           = "ami-408c7f28"
  instance_type = "t1.micro"

  tags = {
    Name = "gokula-sample"
  }
}
