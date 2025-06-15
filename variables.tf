variable "thumbprints" {
  description = "A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). See https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/ for details"
  type        = list(string)
  default = [
    # Generated with
    # https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html
    "6938fd4d98bab03faadb97b34396831e3780aea1",
    # Taken from https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/
    "1c58a3a8518e8759bf075b76b750d4f2df264fcd"
  ]
}

variable "url" {
  description = "The URL for the OpenID Connect (OIDC) in the cluster"
  type        = string
  default     = "https://token.actions.githubusercontent.com"
}
