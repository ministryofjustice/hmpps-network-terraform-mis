module "vpc" {
  source                 = "git::https://github.com/ministryofjustice/hmpps-terraform-modules.git?ref=master//modules//vpc"
  vpc_name               = "${var.environment_name}"
  vpc_dns_hosts          = "${var.aws_nameserver}"
  cidr_block             = "${var.vpc_supernet}"
  route53_domain_private = "${local.route53_internal_domain}"
  tags                   = "${var.tags}"
}
