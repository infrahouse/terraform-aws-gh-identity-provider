resource "aws_iam_openid_connect_provider" "github" {
  url = var.url
  client_id_list = [
    "sts.amazonaws.com"
  ]
  thumbprint_list = var.thumbprints
}
