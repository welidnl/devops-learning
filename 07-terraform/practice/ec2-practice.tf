resource "aws_instance" "practice-ec2-tf" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.Public_Subnet_Practice.id
  vpc_security_group_ids      = [aws_security_group.HTTP-access.id]
  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install httpd -y
    systemctl start httpd
    systemctl enable httpd
    echo "Hello Welid from $(hostname -f)" > /var/www/html/index.html
  EOF

}

resource "aws_security_group" "HTTP-access" {
  name   = "http-sg"
  vpc_id = aws_vpc.practice-tf-vpc.id

  ingress {
    description = "Allow HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All outbound authorised"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

