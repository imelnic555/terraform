# Configure the AWS provider


provider "aws" {
  region = "us-east-1"
  access_key = "AKIAZWFMFRVICK266MGI"
  secret_key = "2S7WocUqblMlFT1XDaezzxFA3dcwhlFVFYdgsWYc"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
}