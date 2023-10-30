resource "aws_lb" "my_alb" {
  name               = "my-application-load-balancer"
  internal           = false # Set to true if internal ALB is needed
  load_balancer_type = "application"
  subnets            = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
}

resource "aws_lb_target_group" "images_tg" {
  name     = "images-target-group"
  port     = 80 # Adjust the port as needed
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id
}

resource "aws_lb_target_group" "videos_tg" {
  name     = "videos-target-group"
  port     = 80 # Adjust the port as needed
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id
}

