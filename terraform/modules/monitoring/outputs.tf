output "sns_topic_arn" {
  value = aws_sns_topic.alerts.arn
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.application.name
}

output "cpu_alarm_name" {
  value = aws_cloudwatch_metric_alarm.high_cpu.alarm_name
}
