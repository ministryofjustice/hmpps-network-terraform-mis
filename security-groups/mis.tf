# define security groups only for mis

# db
resource "aws_security_group" "mis_db_in" {
  name        = "${var.environment_name}-delius-core-${var.mis_app_name}-db-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "db incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.mis_app_name}_db_in", "Type", "DB"))}"

  lifecycle {
    create_before_destroy = true
  }
}

#Common
resource "aws_security_group" "mis_common" {
  name        = "${var.environment_name}-delius-core-${var.mis_app_name}-internal-lb-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "internal LB incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.mis_app_name}_internal-lb_in_in", "Type", "WEB"))}"

  lifecycle {
    create_before_destroy = true
  }
}

#App
resource "aws_security_group" "mis_app_in" {
  name        = "${var.environment_name}-delius-core-${var.mis_app_name}-api-in"
  vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  description = "api incoming"
  tags        = "${merge(data.terraform_remote_state.vpc.tags, map("Name", "${var.environment_name}_${var.mis_app_name}_api_in", "Type", "API"))}"

  lifecycle {
    create_before_destroy = true
  }
}
