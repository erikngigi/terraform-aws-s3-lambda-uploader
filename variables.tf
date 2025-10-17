# Root
variable "project_name" {
  description = "Project name used in resource tagging"
  type        = string
}

variable "prefix" {
  description = "Prefix to associate with the resources"
  type        = string
}

# Storage
variable "presigned_url_expiration" {
  description = "Presigned URL expiration time in seconds"
  type        = number
}

# Serverless
variable "allowed_file_types" {
  description = "List of allowed file types"
  type        = list(string)
}

variable "max_file_size" {
  description = "Maximum file size of the videos"
  type        = number
}
