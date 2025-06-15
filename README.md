# Module terraform-aws-gh-identity-provider

The module creates a GitHub OpenID connector.

The purpose of the GitHub OpenID connector is to give a GitHub Actions worker ability to 
assume an AWS role, so the worker can perform allowed actions on your AWS account.

With a fair degree of simplification the whole process works like this.

1. You "connect" GitHub to your AWS account.
2. GitHub Action worker authenticates itself in AWS. It presents authentication attributes 
such as a repository name, branch or pull request, and desired role it wants to assume.
3. AWS verifies the provided attributes (a.k.a. authentication) and if the desired role's 
policy allows to use the role, then AWS responds back with AWS credentials 
(a.k.a. authorization).
4. The GitHub Actions worker configures its environment. The role is assumed, 
the worker is ready to make AWS API calls. 

This module helps with the step 1 of the process. Effectively, it creates only one AWS resource - 
[aws_iam_openid_connect_provider](https://registry.terraform.io/providers/hashicorp/aws/5.11.0/docs/resources/iam_openid_connect_provider),
but it's handy to have this module around because you need to provide so-called "certificate thumbprints" - 
cryptic alphanumerical strings like `6938fd4d98bab03faadb97b34396831e3780aea1` - which the module includes 
as the default input variables.

For more information check following resources:
* [Obtaining the thumbprint for an OpenID Connect Identity Provider](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html)
* [GitHub Actions – Update on OIDC integration with AWS](https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/)
## Usage

```hcl
module "github-connector" {
  source  = "infrahouse/gh-identity-provider/aws"
  version = "1.0.3"
}
```
For the next step, check the [gha-admin](https://registry.terraform.io/modules/infrahouse/gha-admin/aws/latest) module.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.11 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.github](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_thumbprints"></a> [thumbprints](#input\_thumbprints) | A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). See https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/ for details | `list(string)` | <pre>[<br>  "6938fd4d98bab03faadb97b34396831e3780aea1",<br>  "1c58a3a8518e8759bf075b76b750d4f2df264fcd"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gh_openid_connect_provider_arn"></a> [gh\_openid\_connect\_provider\_arn](#output\_gh\_openid\_connect\_provider\_arn) | ARN of the created GitHub connector. |
