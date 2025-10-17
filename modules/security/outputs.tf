output "video_upload_lambda_role_arn" {
  description = "Output ARN value of the IAM role for CloudWatch and S3 Bucket."
  value       = aws_iam_role.lambda_role.arn
}
