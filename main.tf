resource "aws_iam_openid_connect_provider" "github" {
  url = var.url
  client_id_list = [
    "sts.amazonaws.com"
  ]
  thumbprint_list = var.thumbprints
  tags = merge(
    local.default_module_tags,
    {
      module_version : local.module_version
    }
  )
}
