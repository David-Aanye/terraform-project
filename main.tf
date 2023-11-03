
//Creat elb target group
resource "aws_lb_target_group" "instance_target" {

  name        = "test-elb-tg"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.test.id

  health_check {
    enabled             = true
    interval            = 300
    port                = "traffic-port"
    protocol            = "HTTP"
    path                = "/"
    timeout             = 60
    matcher             = 200
    healthy_threshold   = 3
    unhealthy_threshold = 2
  }
}

//Create elb target group attachement
resource "aws_lb_target_group_attachment" "assignment" {
  target_group_arn = aws_lb_target_group.instance_target.arn
  target_id        = aws_instance.test.id
  port             = 80
}

//Create elb load balancer
resource "aws_lb" "application_load_balancer" {
  name                       = "test-load-balancer"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.elb_security_grp.id]
  subnets                    = [aws_subnet.pub_sn1.id, aws_subnet.pub_sn2.id]
  enable_deletion_protection = false

}

//Create elb listener on port 80
resource "aws_lb_listener" "elb_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.instance_target.arn
  }

} 



