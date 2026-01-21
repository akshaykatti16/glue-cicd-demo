resource "aws_glue_job" "this" {
  name     = var.job_name
  role_arn = var.role_arn

  command {
    name            = "glueetl"
    script_location = var.script_location
    python_version  = "3"
  }

  default_arguments = {
    "--ENV_NAME" = var.env_name
    "--MESSAGE"  = var.message
  }

  glue_version       = "4.0"
  number_of_workers  = 2
  worker_type        = "G.1X"
}
