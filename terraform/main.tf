provider "aws" {
  region = var.region
}

# Upload public key to AWS
resource "aws_key_pair" "student_key" {
  key_name   = "student-key"
  public_key = file("student-key.pub")
}

# Security group for SSH
resource "aws_security_group" "student_sg" {
  name = "student-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance
resource "aws_instance" "student_portal" {
  ami             = "ami-0317b0f0a0144b137"
  instance_type   = var.instance_type
  key_name        = aws_key_pair.student_key.key_name
  security_groups = [aws_security_group.student_sg.name]

  tags = {
    Name = var.instance_name
  }
}
    