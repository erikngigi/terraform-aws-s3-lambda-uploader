resource "aws_s3_bucket" "video_upload_bucket" {
  bucket        = "${var.prefix}-s3-bucket"
  force_destroy = true

  tags = {
    Name    = "${var.prefix}-s3-bucket"
    Purpose = "Video uploads via presigned URLs"
  }
}

resource "aws_s3_bucket_public_access_block" "video_upload_bucket" {
  bucket = aws_s3_bucket.video_upload_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "video_upload_bucket" {
  bucket = aws_s3_bucket.video_upload_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_cors_configuration" "video_upload_bucket" {
  bucket = aws_s3_bucket.video_upload_bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "video_upload_bucket" {
  bucket = aws_s3_bucket.video_upload_bucket.id

  rule {
    id     = "delete-incomplete-multipart-uploads"
    status = "Enabled"

    abort_incomplete_multipart_upload {
      days_after_initiation = 1
    }
  }
}
