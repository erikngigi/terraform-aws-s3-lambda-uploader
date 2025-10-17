output "video_upload_bucket_id" {
  description = "Output ID value of the S3 bucket for video uploads"
  value       = aws_s3_bucket.video_upload_bucket.id
}

output "video_upload_bucket_arn" {
  description = "Output ARN value of the S3 bucket for video uploads"
  value       = aws_s3_bucket.video_upload_bucket.arn
}
