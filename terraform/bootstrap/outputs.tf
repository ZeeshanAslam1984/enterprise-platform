output "terraform_state_bucket" {
  value = aws_s3_bucket.terraform_state.id
}

output "terraform_lock_table" {
  value = aws_dynamodb_table.terraform_locks.name
}
