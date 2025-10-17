variable "project_name" {
  description = "Project name used in resource tagging"
  type        = string
}

variable "prefix" {
  description = "Prefix to associate with the resources"
  type        = string
}

variable "video_upload_bucket_arn" {
  description = "ARN value of the S3 video upload bucket"
  type        = string
}
