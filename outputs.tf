output "repository_urls" {
  value = [for ecr in aws_ecr_repository.this : ecr.repository_url]
}
