locals {
  common_name_suffix = "${var.project_name}-${var.environment}"  # roboshop-dev
  common_tags = {
    project = var.project_name
    environment = var.environment
    terraform = true
  }
  az_names = slice(data.aws_availability_zones.available.names, 0,2)
}