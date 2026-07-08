output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.main.id
}


output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}


output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private.id
}
output "public_route_table_id" {
  description = "Public route table ID"
  value       = aws_route_table.public.id
}
