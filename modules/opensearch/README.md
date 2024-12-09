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
| [newrelic_nrql_alert_condition.clusterstatus-red-dashboard](https://registry.terraform.io/providers/hashicorp/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.clusterstatus-yellow-dashboard](https://registry.terraform.io/providers/hashicorp/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.healthynodedashboard](https://registry.terraform.io/providers/hashicorp/newrelic/latest/docs/resources/nrql_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment name | `string` | n/a | yes |
| <a name="input_newrelic_alert_policy"></a> [newrelic\_alert\_policy](#input\_newrelic\_alert\_policy) | New Relic alert policy | `any` | n/a | yes |
| <a name="input_create_opensearch_alerts"></a> [create\_opensearch\_alerts](#input\_create\_opensearch\_alerts) | Create alerts for OpenSearch | `bool` | `true` | no |
| <a name="input_opensearch_cluster_name"></a> [opensearch\_cluster\_name](#input\_opensearch\_cluster\_name) | Name of the opensearch cluster | `string` | `null` | no |
| <a name="input_opensearch_clusterstatus_red_threshold"></a> [opensearch\_clusterstatus\_red\_threshold](#input\_opensearch\_clusterstatus\_red\_threshold) | Critical threshold for the number of nodes in red status | `number` | `1` | no |
| <a name="input_opensearch_clusterstatus_threshold_duration"></a> [opensearch\_clusterstatus\_threshold\_duration](#input\_opensearch\_clusterstatus\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_opensearch_clusterstatus_yellow_threshold"></a> [opensearch\_clusterstatus\_yellow\_threshold](#input\_opensearch\_clusterstatus\_yellow\_threshold) | Warning threshold for the number of nodes in yellow status | `number` | `1` | no |
| <a name="input_opensearch_healthynodes_critical_threshold"></a> [opensearch\_healthynodes\_critical\_threshold](#input\_opensearch\_healthynodes\_critical\_threshold) | Critical threshold for the number of healthy nodes in the cluster | `number` | `1` | no |
| <a name="input_opensearch_healthynodes_threshold_duration"></a> [opensearch\_healthynodes\_threshold\_duration](#input\_opensearch\_healthynodes\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_opensearch_healthynodes_warning_threshold"></a> [opensearch\_healthynodes\_warning\_threshold](#input\_opensearch\_healthynodes\_warning\_threshold) | Warning threshold for the number of healthy nodes in the cluster | `number` | `2` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->