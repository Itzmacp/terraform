resource "aws_instance" "test" {
  ami           = "ami-0ac7b260cf76d8865"
  instance_type = var.instance_type

  tags = {
    Name = var.Name
  }
}

variable "Name" {}
variable "instance_type" {}