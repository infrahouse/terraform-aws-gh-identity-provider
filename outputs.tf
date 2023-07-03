output "gh_openid_connect_provider_arn" {
  description = "ARN of the created GitHub connector"
  value       = aws_iam_openid_connect_provider.github.arn
}
