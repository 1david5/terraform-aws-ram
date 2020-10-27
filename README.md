## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allow\_external\_principals | Indicates whether principals outside your organization can be associated with a resource share. | `bool` | `false` | no |
| associated\_resources | Resource list to associate with the resource share | `list(string)` | `[]` | no |
| principals | Principal list to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN. | `list(string)` | `[]` | no |
| resource\_share\_name | The name of the resource share. | `string` | `""` | no |
| tags | A map of tags to assign to the resource share. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_share\_arn | ARN of the resource share |

