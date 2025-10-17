output "video_upload_iam_role_lambda_role_arn" {
  description = "Output ARN value of the IAM role for CloudWatch and S3 Bucket."
  value       = aws_iam_role.lambda_role.arn
}

output "video_upload_iam_role_lambda_policy" {
  description = "Output of the IAM role policy for CloudWatch and S3 Bucket."
  value = aws_iam_role_policy.lambda_policy
}
