module "storage" {
  source       = "./modules/storage"
  prefix       = var.prefix
  project_name = var.project_name
}

module "security" {
  source                  = "./modules/security"
  prefix                  = var.prefix
  project_name            = var.project_name
  video_upload_bucket_arn = module.storage.video_upload_bucket_arn
}

module "management" {
  source       = "./modules/management"
  prefix       = var.prefix
  project_name = var.project_name
}

module "serverless" {
  source = "./modules/severless"
}

module "network" {
  source = "./modules/network"
}
