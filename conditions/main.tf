resource "aws_instance" "test" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = startswith(var.instance_type, "t2") ? "t3.micro" : var.instance_type
}

variable "instance_type" {}
