<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.2 |
| <a name="requirement_newrelic"></a> [newrelic](#requirement\_newrelic) | >= 3.32.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | >= 3.32.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_nrql_alert_condition.approximated_age_of_messages](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.messages_in_dlq](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | n/a | yes |
| <a name="input_newrelic_alert_policy"></a> [newrelic\_alert\_policy](#input\_newrelic\_alert\_policy) | New Relic alert policy | `any` | n/a | yes |
| <a name="input_create_dlq_alert"></a> [create\_dlq\_alert](#input\_create\_dlq\_alert) | Create an alert for the dead-letter-queue | `bool` | `false` | no |
| <a name="input_create_sqs_alerts"></a> [create\_sqs\_alerts](#input\_create\_sqs\_alerts) | Create alerts for SQS | `bool` | `true` | no |
| <a name="input_queue_arn"></a> [queue\_arn](#input\_queue\_arn) | Arn of the queue to be monitored | `string` | `null` | no |
| <a name="input_queue_arn_dead_letter"></a> [queue\_arn\_dead\_letter](#input\_queue\_arn\_dead\_letter) | Arn of the dead-letter-queue to be monitored | `string` | `null` | no |
| <a name="input_sqs_approx_age_message_critical_threshold"></a> [sqs\_approx\_age\_message\_critical\_threshold](#input\_sqs\_approx\_age\_message\_critical\_threshold) | Critical threshold for the approximated age of the oldest message in the queue | `number` | `500000` | no |
| <a name="input_sqs_approx_age_message_threshold_duration"></a> [sqs\_approx\_age\_message\_threshold\_duration](#input\_sqs\_approx\_age\_message\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_sqs_approx_age_message_warning_threshold"></a> [sqs\_approx\_age\_message\_warning\_threshold](#input\_sqs\_approx\_age\_message\_warning\_threshold) | Warning threshold for the approximated age of the oldest message in the queue | `number` | `250000` | no |
| <a name="input_sqs_message_dlq_critical_threshold"></a> [sqs\_message\_dlq\_critical\_threshold](#input\_sqs\_message\_dlq\_critical\_threshold) | Critical threshold for the number of messages in the dead-letter-queue | `number` | `5` | no |
| <a name="input_sqs_message_dlq_threshold_duration"></a> [sqs\_message\_dlq\_threshold\_duration](#input\_sqs\_message\_dlq\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_sqs_message_dlq_warning_threshold"></a> [sqs\_message\_dlq\_warning\_threshold](#input\_sqs\_message\_dlq\_warning\_threshold) | Warning threshold for the number of messages in the dead-letter-queue | `number` | `1` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->