<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_nrql_alert_condition.ses_bounce](https://registry.terraform.io/providers/hashicorp/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.ses_complaint](https://registry.terraform.io/providers/hashicorp/newrelic/latest/docs/resources/nrql_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment name | `string` | n/a | yes |
| <a name="input_newrelic_alert_policy"></a> [newrelic\_alert\_policy](#input\_newrelic\_alert\_policy) | New Relic alert policy | `any` | n/a | yes |
| <a name="input_create_ses_alerts"></a> [create\_ses\_alerts](#input\_create\_ses\_alerts) | Create alerts for AWS SES | `bool` | `true` | no |
| <a name="input_ses_bounce_critical_threshold"></a> [ses\_bounce\_critical\_threshold](#input\_ses\_bounce\_critical\_threshold) | Bounce critical threshold in % | `number` | `8` | no |
| <a name="input_ses_bounce_threshold_duration"></a> [ses\_bounce\_threshold\_duration](#input\_ses\_bounce\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_ses_bounce_warning_threshold"></a> [ses\_bounce\_warning\_threshold](#input\_ses\_bounce\_warning\_threshold) | Bounce warning threshold in % | `number` | `4` | no |
| <a name="input_ses_complaint_critical_threshold"></a> [ses\_complaint\_critical\_threshold](#input\_ses\_complaint\_critical\_threshold) | Complaint critical threshold in % | `number` | `0.35` | no |
| <a name="input_ses_complaint_threshold_duration"></a> [ses\_complaint\_threshold\_duration](#input\_ses\_complaint\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_ses_complaint_warning_threshold"></a> [ses\_complaint\_warning\_threshold](#input\_ses\_complaint\_warning\_threshold) | Complaint warning threshold in % | `number` | `0.08` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->