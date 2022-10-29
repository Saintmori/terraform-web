resource "aws_autoscaling_group" "main" {
  name                      = replace(local.name, "rtype", "main-asg")
  max_size                  = var.dev_max_size 
  min_size                  = var.dev_min_size
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = var.dev_desired_capacity 
  force_delete              = var.force_delete
  launch_configuration      = aws_launch_configuration.dev_main.name 
  vpc_zone_identifier       = var.subnets
  tag {
    key                 = "env"
    value               = var.env
    propagate_at_launch = true
  }
  lifecycle {
    create_before_destroy = true
  }
  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
  }
}
###########################auto scaling group load balancer attachment###################
resource "aws_autoscaling_attachment" "asg_alb_attachment" {
  autoscaling_group_name = aws_autoscaling_group.main.id
  lb_target_group_arn    = data.aws_lb_target_group.main.arn
}
# min= 1
# max= 5
# desire= 5