# Configure the AWS provider


provider "aws" {
  profile = "test"
  region = "us-east-1"
  access_key = "A0LPA99DFKJ74HW0CPAGH0FNM3"
  secret_key = "a1toUHEBHSU49348JjdssNicCwcT61DfzHtHtkWJYhgnN"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
}