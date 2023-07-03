output "gh_openid_connect_provider_arb" {
  description = "ARN of the created GitHub connector"
  value       = aws_iam_openid_connect_provider.github.arn
}