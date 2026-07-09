output "application_security_group_id" {
  description = "Application Security Group ID"
  value       = aws_security_group.application.id
}
