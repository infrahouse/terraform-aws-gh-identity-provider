locals {
  module_version = "1.1.0"

  default_module_tags = merge(
    {
      created_by_module : "infrahouse/gh-identity-provider/aws"
    }
  )
}
