resource "null_resource" "dummy"{
    count = 10
    }

provider "aws" {}

variable "instance"{
    default = [frontend,catalogue]
    }

resource "aws_instance" "web" {
    count = length(var.instance)
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance[count.index]
  }
}