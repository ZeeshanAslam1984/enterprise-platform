resource "aws_launch_template" "this" {
  name_prefix   = "${var.environment}-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = var.security_group_ids

  tag_specifications {
    resource_type = "instance"

    tags = merge(var.tags, {
      Environment = var.environment
    })
  }
}

resource "aws_autoscaling_group" "this" {
  name             = "${var.environment}-asg"
  desired_capacity = 2
  min_size         = 2
  max_size         = 4

  vpc_zone_identifier = var.subnet_ids
  target_group_arns   = var.target_group_arns

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }
}
