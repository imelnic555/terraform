# Configure the AWS provider


provider "aws" {
  region = "us-east-1"

}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
}

resource "aws_ecr_repository" "ionrepo" {
  name                 = "ionrepo"
  image_tag_mutability = "MUTABLE"  # or "IMMUTABLE" based on your requirement
  image_scanning_configuration {
    scan_on_push = true
  }