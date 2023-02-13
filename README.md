
# <application_license_badge>
<!--- [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE) --->

# BC Gov Terraform Template

This repo provides a starting point for users who want to create valid Terraform modules stored in GitHub.  

## Third-Party Products/Libraries used and the licenses they are covered by
<!--- product/library and path to the LICENSE --->
<!--- Example: <library_name> - [![GitHub](<shield_icon_link>)](<path_to_library_LICENSE>) --->

## Project Status

- [x] Development
- [ ] Production/Maintenance

# Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |
| [aws_iam_policy_document.ecr_read](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ecr_read_write](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region things are created in | `string` | `"ca-central-1"` | no |
| <a name="input_image_scanning_enabled"></a> [image\_scanning\_enabled](#input\_image\_scanning\_enabled) | Enable container image scanning for security issues. | `bool` | `true` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | Tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. | `string` | `"MUTABLE"` | no |
| <a name="input_read_principals"></a> [read\_principals](#input\_read\_principals) | Defines which external principals are allowed to read from the ECR repository | `list(any)` | n/a | yes |
| <a name="input_repository_names"></a> [repository\_names](#input\_repository\_names) | Name for the container repository to be provisioned. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A set of of one or more tags to provide some metadata for the provisioned resources. | `map(string)` | `{}` | no |
| <a name="input_write_principals"></a> [write\_principals](#input\_write\_principals) | Defines which external principals are allowed to write to the ECR repository | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository_urls"></a> [repository\_urls](#output\_repository\_urls) | n/a |
<!-- END_TF_DOCS -->

## Getting Started
<!--- setup env vars, secrets, instructions... --->

## Getting Help or Reporting an Issue
<!--- Example below, modify accordingly --->
To report bugs/issues/feature requests, please file an [issue](../../issues).


## How to Contribute
<!--- Example below, modify accordingly --->
If you would like to contribute, please see our [CONTRIBUTING](./CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md). 
By participating in this project you agree to abide by its terms.


## License
<!--- Example below, modify accordingly --->
    Copyright 2018 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
