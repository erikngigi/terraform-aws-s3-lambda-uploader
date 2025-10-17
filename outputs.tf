output "video_upload_bucket_id" {
  value = module.storage.video_upload_bucket_id
}

output "video_upload_iam_role_lambda_role_arn" {
  value = module.security.video_upload_iam_role_lambda_role_arn
}

output "video_upload_iam_role_lambda_policy" {
  value = module.security.video_upload_iam_role_lambda_policy
}

output "video_upload_lambda_log_group_name" {
  value = module.management.video_upload_lambda_log_group_name
}

output "video_upload_lambda_log_group_arn" {
  value = module.management.video_upload_lambda_log_group_arn
}

output "video_upload_lambda_log_group" {
  value = module.management.video_upload_lambda_log_group
}
