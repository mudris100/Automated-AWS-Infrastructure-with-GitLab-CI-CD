resource "cloudflare_dns_record" "app_dns" {
  zone_id = var.cloudflare_zone_id
  name    = "app"
  type    = "A"
  content = aws_instance.main.public_ip
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "grafana_dns" {
  zone_id = var.cloudflare_zone_id
  name    = "monitoring"
  type    = "A"
  content = aws_instance.main.public_ip
  ttl     = 1
  proxied = true
}
