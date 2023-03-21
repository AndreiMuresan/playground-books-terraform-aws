resource "aws_instance" "books_ec2" {
  ami           = "ami-0557a15b87f6559cf" # ubuntu 22.04LTS us-east-1
  instance_type = "t2.micro"
  key_name      = "tf-test"
  vpc_security_group_ids = [aws_security_group.books_ec2_sg.id]

  tags = {
    Name = "books-ec2"
    CreatedBy = "Terraform"
  }

}