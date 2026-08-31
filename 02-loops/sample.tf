resource "null_resource" "dummy"{
    count = 10
    }

provider "aws" {}

variable "instances"{
    default = {
       frontend = {
       instance_type = "t3.micro"
        }
        catalogue = {
              instance_type = "t3.micro"
               }
    }}

resource "aws_instance" "web" {
    for_each = var.instances
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}