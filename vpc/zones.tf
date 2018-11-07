# Private internal zone for easier lookups
resource "aws_route53_zone" "internal_zone" {
  name   = "${local.route53_internal_domain}"
  vpc_id = "${module.vpc.vpc_id}"
}

data "aws_route53_zone" "public_hosted_zone" {
  name = "${local.public_domain}"
}
