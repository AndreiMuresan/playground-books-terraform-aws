resource "aws_security_group" "books_ec2_sg" {
  name          = "books-ec2-sg"

  ingress {
    protocol    = -1
    self        = true
    from_port   = 0
    to_port     = 0
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "books-ec2-sg"
    CreatedBy = "Terraform"
  }

}