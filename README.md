# Module terraform-aws-gh-identity-provider

The module creates GitHub OpenID connector.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_thumbprints"></a> [thumbprints](#input\_thumbprints) | n/a | `list(string)` | <pre>[<br>  "6938fd4d98bab03faadb97b34396831e3780aea1",<br>  "1c58a3a8518e8759bf075b76b750d4f2df264fcd"<br>]</pre> | no |

## Outputs
| Name | Description |
|------|-------------|
| <a name="output_gh_openid_connect_provider_arn"></a> [gh\_openid\_connect\_provider\_arn](#output\_gh\_openid\_connect\_provider\_arn) | ARN of the created GitHub connector |
