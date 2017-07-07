data "aws_route53_zone" "selected" {
    name = "${var.domain}"
}

resource "aws_route53_record" "record" {
    zone_id = "${data.aws_route53_zone.selected.zone_id}"
    name    = "${var.subdomain}.${var.domain}"

    type    = "${var.type}"
    ttl     = "${var.ttl}"
    records = [ "${var.records}" ]
}
