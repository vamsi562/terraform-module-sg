locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Terraform   = true
  }
  common_name_suffix = "${var.project_name}-${var.environment}-${var.sg_name[count.index]}"
  vpc_id             = data.aws_ssm_parameter.vpc_id.value
}
