provider "aws" {
  region = "ap-south-1"
}

module "glue_job" {
  source          = "../../modules/glue-job"
  job_name        = "hello-glue-dev"
  role_arn        = var.role_arn
  script_location = var.script_location
  env_name        = "DEV-UAE2"
  message         = "Namaste from DEV environment"
}
