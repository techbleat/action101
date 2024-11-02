provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "ec-create" {
  ami           = "ami-0b4c7755cdf0d9219"
  instance_type = "t2.micro"

  tags = {
    Name = "Git Action2 in Action"
  }

}

terraform {
  backend "s3" {
    bucket = "techbleat-terraform-store"
    key    = "action/dev/terraform.tfstate"
    region = "eu-west-2"
  }
}