output "url" {
  value = aws_s3_bucket.website_bucket.website
}

output "nameservers" {
  value = aws_route53_zone.primary.name_servers
}

