resource "aws_cloudwatch_log_group" "video_upload_lambda_log_group" {
  name              = "/aws/lambda/${var.prefix}-generated-presigned_url"
  retention_in_days = 14

  tags = {
    Name = "${var.prefix}-logs"
  }
}
