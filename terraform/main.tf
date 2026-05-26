resource "aws_security_group" "ecommerce_sg" {
  name        = "ecommerce-sg"
  description = "Allow application traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Frontend"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "User Service"
    from_port   = 3001
    to_port     = 3001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Product Service"
    from_port   = 3002
    to_port     = 3002
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Cart Service"
    from_port   = 3003
    to_port     = 3003
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Order Service"
    from_port   = 3004
    to_port     = 3004
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

resource "aws_instance" "ecommerce" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  security_groups        = [aws_security_group.ecommerce_sg.name]

  user_data = <<-EOF
              #!/bin/bash

              apt update -y
              apt install docker.io -y

              systemctl start docker
              systemctl enable docker

              docker pull sudhanshuj1307/frontend-service
              docker pull sudhanshuj1307/user-service
              docker pull sudhanshuj1307/product-service
              docker pull sudhanshuj1307/cart-service
              docker pull sudhanshuj1307/order-service

              docker run -d -p 3000:3000 sudhanshuj1307/frontend-service
              docker run -d -p 3001:3001 sudhanshuj1307/user-service
              docker run -d -p 3002:3002 sudhanshuj1307/product-service
              docker run -d -p 3003:3003 sudhanshuj1307/cart-service
              docker run -d -p 3004:3004 sudhanshuj1307/order-service
              EOF

  tags = {
    Name = "Ecommerce-App"
  }
}
