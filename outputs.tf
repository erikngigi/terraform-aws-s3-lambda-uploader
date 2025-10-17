output "video_upload_bucket_id" {
  value = module.storage.video_upload_bucket_id
}

output "video_upload_lambda_role_arn" {
  value = module.security.video_upload_lambda_role_arn
}

output "lambda_log_group_name" {
  value = module.management.lambda_log_group_name
}

output "lambda_log_group_arn" {
  value = module.management.lambda_log_group_arn
}
