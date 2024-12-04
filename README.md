# terraform-newrelic-aws-alerting
NewRelic Alerts for several AWS services

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
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
| [newrelic_alert_policy.opensearch](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_alert_policy.rds](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_alert_policy.ses](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_notification_channel.google_chat_opensearch](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_channel) | resource |
| [newrelic_notification_channel.google_chat_rds](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_channel) | resource |
| [newrelic_notification_channel.google_chat_ses](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_channel) | resource |
| [newrelic_notification_destination.google_chat_opensearch](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_destination) | resource |
| [newrelic_notification_destination.google_chat_rds](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_destination) | resource |
| [newrelic_notification_destination.google_chat_ses](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_destination) | resource |
| [newrelic_nrql_alert_condition.clusterstatus-red-dashboard](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.clusterstatus-yellow-dashboard](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.cpu_utilization](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.database_connection](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.free_local_storage](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.free_storage_space](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.freeable_memory](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.healthynodedashboard](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.max_used_transaction_ids](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.read_latency](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.replica_lag](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.ses_bounce](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.ses_complaint](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.ses_send_attemptes](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.write_latency](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_workflow.opensearch](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/workflow) | resource |
| [newrelic_workflow.rds](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/workflow) | resource |
| [newrelic_workflow.ses](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/workflow) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_google_chat_url"></a> [google\_chat\_url](#input\_google\_chat\_url) | URL of your google chat space | `string` | n/a | yes |
| <a name="input_opensearch_app_name"></a> [opensearch\_app\_name](#input\_opensearch\_app\_name) | Name of your application | `string` | n/a | yes |
| <a name="input_rds_app_name"></a> [rds\_app\_name](#input\_rds\_app\_name) | Name of your application | `string` | n/a | yes |
| <a name="input_create_opensearch_alerts"></a> [create\_opensearch\_alerts](#input\_create\_opensearch\_alerts) | Create alerts for OpenSearch | `bool` | `false` | no |
| <a name="input_create_rds_alerts"></a> [create\_rds\_alerts](#input\_create\_rds\_alerts) | Create alerts for RDS | `bool` | `false` | no |
| <a name="input_create_ses_alerts"></a> [create\_ses\_alerts](#input\_create\_ses\_alerts) | Create alerts for AWS SES | `bool` | `false` | no |
| <a name="input_google_chat_notification_triggers"></a> [google\_chat\_notification\_triggers](#input\_google\_chat\_notification\_triggers) | The issue events to notify on for google chat notifications. Valid values are ACTIVATED, ACKNOWLEDGED, PRIORITY\_CHANGED, CLOSED or OTHER\_UPDATES | `list(string)` | <pre>[<br>  "ACTIVATED",<br>  "ACKNOWLEDGED",<br>  "PRIORITY_CHANGED",<br>  "CLOSED",<br>  "OTHER_UPDATES"<br>]</pre> | no |
| <a name="input_opensearch_cluster_name"></a> [opensearch\_cluster\_name](#input\_opensearch\_cluster\_name) | Name of the opensearch cluster | `string` | `null` | no |
| <a name="input_opensearch_clusterstatus_red_threshold"></a> [opensearch\_clusterstatus\_red\_threshold](#input\_opensearch\_clusterstatus\_red\_threshold) | Critical threshold for the number of nodes in red status | `number` | `1` | no |
| <a name="input_opensearch_clusterstatus_threshold_duration"></a> [opensearch\_clusterstatus\_threshold\_duration](#input\_opensearch\_clusterstatus\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_opensearch_clusterstatus_yellow_threshold"></a> [opensearch\_clusterstatus\_yellow\_threshold](#input\_opensearch\_clusterstatus\_yellow\_threshold) | Warning threshold for the number of nodes in yellow status | `number` | `1` | no |
| <a name="input_opensearch_healthynodes_critical_threshold"></a> [opensearch\_healthynodes\_critical\_threshold](#input\_opensearch\_healthynodes\_critical\_threshold) | Critical threshold for the number of healthy nodes in the cluster | `number` | `1` | no |
| <a name="input_opensearch_healthynodes_threshold_duration"></a> [opensearch\_healthynodes\_threshold\_duration](#input\_opensearch\_healthynodes\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_opensearch_healthynodes_warning_threshold"></a> [opensearch\_healthynodes\_warning\_threshold](#input\_opensearch\_healthynodes\_warning\_threshold) | Warning threshold for the number of healthy nodes in the cluster | `number` | `2` | no |
| <a name="input_rds_cpu_critical_threshold"></a> [rds\_cpu\_critical\_threshold](#input\_rds\_cpu\_critical\_threshold) | Critical threshold for the CPU utilization of the RDS instance | `number` | `90` | no |
| <a name="input_rds_cpu_threshold_duration"></a> [rds\_cpu\_threshold\_duration](#input\_rds\_cpu\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `75` | no |
| <a name="input_rds_cpu_warning_threshold"></a> [rds\_cpu\_warning\_threshold](#input\_rds\_cpu\_warning\_threshold) | Warning threshold for the CPU utilization of the RDS instance | `number` | `75` | no |
| <a name="input_rds_database_connections_critical_threshold"></a> [rds\_database\_connections\_critical\_threshold](#input\_rds\_database\_connections\_critical\_threshold) | Critical threshold for the number of database connections | `number` | `200` | no |
| <a name="input_rds_database_connections_threshold_duration"></a> [rds\_database\_connections\_threshold\_duration](#input\_rds\_database\_connections\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_rds_database_connections_warning_threshold"></a> [rds\_database\_connections\_warning\_threshold](#input\_rds\_database\_connections\_warning\_threshold) | Warning threshold for the number of database connections | `number` | `75` | no |
| <a name="input_rds_free_local_storage_critical_threshold"></a> [rds\_free\_local\_storage\_critical\_threshold](#input\_rds\_free\_local\_storage\_critical\_threshold) | Critical threshold for free local storage | `number` | `10` | no |
| <a name="input_rds_free_local_storage_threshold_duration"></a> [rds\_free\_local\_storage\_threshold\_duration](#input\_rds\_free\_local\_storage\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_rds_free_local_storage_warning_threshold"></a> [rds\_free\_local\_storage\_warning\_threshold](#input\_rds\_free\_local\_storage\_warning\_threshold) | Warning threshold for free local storage | `number` | `20` | no |
| <a name="input_rds_free_storage_space_critical_threshold"></a> [rds\_free\_storage\_space\_critical\_threshold](#input\_rds\_free\_storage\_space\_critical\_threshold) | Critical threshold for free storage space | `number` | `5` | no |
| <a name="input_rds_free_storage_space_threshold_duration"></a> [rds\_free\_storage\_space\_threshold\_duration](#input\_rds\_free\_storage\_space\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_rds_free_storage_space_warning_threshold"></a> [rds\_free\_storage\_space\_warning\_threshold](#input\_rds\_free\_storage\_space\_warning\_threshold) | Warning threshold for free storage space | `number` | `10` | no |
| <a name="input_rds_freeable_memory_critical_threshold"></a> [rds\_freeable\_memory\_critical\_threshold](#input\_rds\_freeable\_memory\_critical\_threshold) | Critical threshold for freeable memory | `number` | `25` | no |
| <a name="input_rds_freeable_memory_threshold_duration"></a> [rds\_freeable\_memory\_threshold\_duration](#input\_rds\_freeable\_memory\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_rds_freeable_memory_warning_threshold"></a> [rds\_freeable\_memory\_warning\_threshold](#input\_rds\_freeable\_memory\_warning\_threshold) | Warning threshold for freeable memory | `number` | `15` | no |
| <a name="input_rds_instance_identifier"></a> [rds\_instance\_identifier](#input\_rds\_instance\_identifier) | Name of the RDS instance | `string` | `null` | no |
| <a name="input_rds_max_used_transaction_ids_critical_threshold"></a> [rds\_max\_used\_transaction\_ids\_critical\_threshold](#input\_rds\_max\_used\_transaction\_ids\_critical\_threshold) | Critical threshold for the maximum number of used transaction IDs | `number` | `5` | no |
| <a name="input_rds_max_used_transaction_ids_threshold_duration"></a> [rds\_max\_used\_transaction\_ids\_threshold\_duration](#input\_rds\_max\_used\_transaction\_ids\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_rds_max_used_transaction_ids_warning_threshold"></a> [rds\_max\_used\_transaction\_ids\_warning\_threshold](#input\_rds\_max\_used\_transaction\_ids\_warning\_threshold) | Warning threshold for the maximum number of used transaction IDs | `number` | `10` | no |
| <a name="input_rds_read_latency_critical_threshold"></a> [rds\_read\_latency\_critical\_threshold](#input\_rds\_read\_latency\_critical\_threshold) | Critical threshold for the read latency | `number` | `40` | no |
| <a name="input_rds_read_latency_threshold_duration"></a> [rds\_read\_latency\_threshold\_duration](#input\_rds\_read\_latency\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_rds_read_latency_warning_threshold"></a> [rds\_read\_latency\_warning\_threshold](#input\_rds\_read\_latency\_warning\_threshold) | Warning threshold for the read latency | `number` | `20` | no |
| <a name="input_rds_replica_lag_critical_threshold"></a> [rds\_replica\_lag\_critical\_threshold](#input\_rds\_replica\_lag\_critical\_threshold) | Critical threshold for replica lag | `number` | `60` | no |
| <a name="input_rds_replica_lag_threshold_duration"></a> [rds\_replica\_lag\_threshold\_duration](#input\_rds\_replica\_lag\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_rds_replica_lag_warning_threshold"></a> [rds\_replica\_lag\_warning\_threshold](#input\_rds\_replica\_lag\_warning\_threshold) | Warning threshold for replica lag | `number` | `30` | no |
| <a name="input_rds_write_latency_critical_threshold"></a> [rds\_write\_latency\_critical\_threshold](#input\_rds\_write\_latency\_critical\_threshold) | Critical threshold for the write latency | `number` | `40` | no |
| <a name="input_rds_write_latency_threshold_duration"></a> [rds\_write\_latency\_threshold\_duration](#input\_rds\_write\_latency\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_rds_write_latency_warning_threshold"></a> [rds\_write\_latency\_warning\_threshold](#input\_rds\_write\_latency\_warning\_threshold) | Warning threshold for the write latency | `number` | `20` | no |
| <a name="input_ses_account_name"></a> [ses\_account\_name](#input\_ses\_account\_name) | Account name in which ses is enabled | `string` | `null` | no |
| <a name="input_ses_bounce_critical_threshold"></a> [ses\_bounce\_critical\_threshold](#input\_ses\_bounce\_critical\_threshold) | Bounce critical threshold in % | `number` | `8` | no |
| <a name="input_ses_bounce_threshold_duration"></a> [ses\_bounce\_threshold\_duration](#input\_ses\_bounce\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_ses_bounce_warning_threshold"></a> [ses\_bounce\_warning\_threshold](#input\_ses\_bounce\_warning\_threshold) | Bounce warning threshold in % | `number` | `4` | no |
| <a name="input_ses_complaint_critical_threshold"></a> [ses\_complaint\_critical\_threshold](#input\_ses\_complaint\_critical\_threshold) | Complaint critical threshold in % | `number` | `0.35` | no |
| <a name="input_ses_complaint_threshold_duration"></a> [ses\_complaint\_threshold\_duration](#input\_ses\_complaint\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_ses_complaint_warning_threshold"></a> [ses\_complaint\_warning\_threshold](#input\_ses\_complaint\_warning\_threshold) | Complaint warning threshold in % | `number` | `0.08` | no |
| <a name="input_ses_send_attemptes_critical_threshold"></a> [ses\_send\_attemptes\_critical\_threshold](#input\_ses\_send\_attemptes\_critical\_threshold) | Send attempts critical threshold in % | `number` | `5` | no |
| <a name="input_ses_send_attemptes_threshold_duration"></a> [ses\_send\_attemptes\_threshold\_duration](#input\_ses\_send\_attemptes\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `60` | no |
| <a name="input_ses_send_attemptes_warning_threshold"></a> [ses\_send\_attemptes\_warning\_threshold](#input\_ses\_send\_attemptes\_warning\_threshold) | Send attemptes warning threshold in % | `number` | `20` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->