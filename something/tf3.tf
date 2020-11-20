resource "aws_instance" "web" {
  ami                  = "ami-b73b63a0"
  instance_type        = "t1.micro" # previous instance type!
  iam_instance_profile = "app-service"

  tags {
    Name = "HelloWorld"
  }
}

