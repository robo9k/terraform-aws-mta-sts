# MTA-STS

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| domain\_name | n/a | `any` | n/a | yes |
| max\_age | Max lifetime of the policy (plaintext non-negative integer seconds, maximum value of 31557600). | `number` | n/a | yes |
| mode | One of `enforce`, `testing`, or `none`, indicating the expected behavior of a Sending MTA in the case of a policy validation failure. | `string` | n/a | yes |
| mx | Allowed MX patterns. One or more patterns matching allowed MX hosts for the Policy Domain. | `list(string)` | n/a | yes |
| rua | A URI specifying the endpoint to which aggregate information about policy validation results should be sent. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| policy | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
