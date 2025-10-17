output "video_upload_lambda_log_group_name" {
  description = "Output name of the CloudWatch Log Group for the Lambda video upload."
  value       = aws_cloudwatch_log_group.video_upload_lambda_log_group.name
}

output "video_upload_lambda_log_group_arn" {
  description = "Output ARN of the CloudWatch Log Group for the Lambda video upload."
  value       = aws_cloudwatch_log_group.video_upload_lambda_log_group.arn
}

output "video_upload_lambda_log_group" {
  description = "Output CloudWatch Log Group resource for Lambda video upload"
  value       = aws_cloudwatch_log_group.video_upload_lambda_log_group
}
