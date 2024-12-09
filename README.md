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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_opensearch_alerts"></a> [opensearch\_alerts](#module\_opensearch\_alerts) | ./modules/opensearch | n/a |
| <a name="module_rds_alerts"></a> [rds\_alerts](#module\_rds\_alerts) | ./modules/rds | n/a |
| <a name="module_ses_alerts"></a> [ses\_alerts](#module\_ses\_alerts) | ./modules/ses | n/a |
| <a name="module_sqs_alerts"></a> [sqs\_alerts](#module\_sqs\_alerts) | ./modules/sqs | n/a |

## Resources

| Name | Type |
|------|------|
| [newrelic_alert_policy.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_notification_channel.google_chat](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_channel) | resource |
| [newrelic_notification_destination.google_chat](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_destination) | resource |
| [newrelic_workflow.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/workflow) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_name"></a> [app\_name](#input\_app\_name) | Name of application | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_google_chat_url"></a> [google\_chat\_url](#input\_google\_chat\_url) | URL of your google chat space | `string` | n/a | yes |
| <a name="input_queue_arn"></a> [queue\_arn](#input\_queue\_arn) | Arn of the queue to be monitored | `string` | n/a | yes |
| <a name="input_create_dlq_alert"></a> [create\_dlq\_alert](#input\_create\_dlq\_alert) | Create an alert for the dead-letter-queue | `bool` | `false` | no |
| <a name="input_create_opensearch_alerts"></a> [create\_opensearch\_alerts](#input\_create\_opensearch\_alerts) | Create alerts for OpenSearch | `bool` | `false` | no |
| <a name="input_create_rds_alerts"></a> [create\_rds\_alerts](#input\_create\_rds\_alerts) | Create alerts for RDS | `bool` | `false` | no |
| <a name="input_create_ses_alerts"></a> [create\_ses\_alerts](#input\_create\_ses\_alerts) | Create alerts for AWS SES | `bool` | `false` | no |
| <a name="input_create_sqs_alerts"></a> [create\_sqs\_alerts](#input\_create\_sqs\_alerts) | Create alerts for SQS | `bool` | `true` | no |
| <a name="input_google_chat_notification_triggers"></a> [google\_chat\_notification\_triggers](#input\_google\_chat\_notification\_triggers) | The issue events to notify on for google chat notifications. Valid values are ACTIVATED, ACKNOWLEDGED, PRIORITY\_CHANGED, CLOSED or OTHER\_UPDATES | `list(string)` | <pre>[<br>  "ACTIVATED",<br>  "ACKNOWLEDGED",<br>  "PRIORITY_CHANGED",<br>  "CLOSED",<br>  "OTHER_UPDATES"<br>]</pre> | no |
| <a name="input_opensearch_cluster_name"></a> [opensearch\_cluster\_name](#input\_opensearch\_cluster\_name) | Name of the opensearch cluster | `string` | `null` | no |
| <a name="input_opensearch_clusterstatus_red_threshold"></a> [opensearch\_clusterstatus\_red\_threshold](#input\_opensearch\_clusterstatus\_red\_threshold) | Critical threshold for the number of nodes in red status | `number` | `null` | no |
| <a name="input_opensearch_clusterstatus_threshold_duration"></a> [opensearch\_clusterstatus\_threshold\_duration](#input\_opensearch\_clusterstatus\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_opensearch_clusterstatus_yellow_threshold"></a> [opensearch\_clusterstatus\_yellow\_threshold](#input\_opensearch\_clusterstatus\_yellow\_threshold) | Warning threshold for the number of nodes in yellow status | `number` | `null` | no |
| <a name="input_opensearch_healthynodes_critical_threshold"></a> [opensearch\_healthynodes\_critical\_threshold](#input\_opensearch\_healthynodes\_critical\_threshold) | Critical threshold for the number of healthy nodes in the cluster | `number` | `null` | no |
| <a name="input_opensearch_healthynodes_threshold_duration"></a> [opensearch\_healthynodes\_threshold\_duration](#input\_opensearch\_healthynodes\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_opensearch_healthynodes_warning_threshold"></a> [opensearch\_healthynodes\_warning\_threshold](#input\_opensearch\_healthynodes\_warning\_threshold) | Warning threshold for the number of healthy nodes in the cluster | `number` | `null` | no |
| <a name="input_queue_arn_dead_letter"></a> [queue\_arn\_dead\_letter](#input\_queue\_arn\_dead\_letter) | Arn of the dead-letter-queue to be monitored | `string` | `null` | no |
| <a name="input_rds_cpu_critical_threshold"></a> [rds\_cpu\_critical\_threshold](#input\_rds\_cpu\_critical\_threshold) | Critical threshold for the CPU utilization of the RDS instance | `number` | `null` | no |
| <a name="input_rds_cpu_threshold_duration"></a> [rds\_cpu\_threshold\_duration](#input\_rds\_cpu\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_cpu_warning_threshold"></a> [rds\_cpu\_warning\_threshold](#input\_rds\_cpu\_warning\_threshold) | Warning threshold for the CPU utilization of the RDS instance | `number` | `null` | no |
| <a name="input_rds_database_connections_critical_threshold"></a> [rds\_database\_connections\_critical\_threshold](#input\_rds\_database\_connections\_critical\_threshold) | Critical threshold for the number of database connections | `number` | `null` | no |
| <a name="input_rds_database_connections_threshold_duration"></a> [rds\_database\_connections\_threshold\_duration](#input\_rds\_database\_connections\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_database_connections_warning_threshold"></a> [rds\_database\_connections\_warning\_threshold](#input\_rds\_database\_connections\_warning\_threshold) | Warning threshold for the number of database connections | `number` | `null` | no |
| <a name="input_rds_free_local_storage_critical_threshold"></a> [rds\_free\_local\_storage\_critical\_threshold](#input\_rds\_free\_local\_storage\_critical\_threshold) | Critical threshold for free local storage | `number` | `null` | no |
| <a name="input_rds_free_local_storage_threshold_duration"></a> [rds\_free\_local\_storage\_threshold\_duration](#input\_rds\_free\_local\_storage\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_free_local_storage_warning_threshold"></a> [rds\_free\_local\_storage\_warning\_threshold](#input\_rds\_free\_local\_storage\_warning\_threshold) | Warning threshold for free local storage | `number` | `null` | no |
| <a name="input_rds_free_storage_space_critical_threshold"></a> [rds\_free\_storage\_space\_critical\_threshold](#input\_rds\_free\_storage\_space\_critical\_threshold) | Critical threshold for free storage space | `number` | `null` | no |
| <a name="input_rds_free_storage_space_threshold_duration"></a> [rds\_free\_storage\_space\_threshold\_duration](#input\_rds\_free\_storage\_space\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_free_storage_space_warning_threshold"></a> [rds\_free\_storage\_space\_warning\_threshold](#input\_rds\_free\_storage\_space\_warning\_threshold) | Warning threshold for free storage space | `number` | `null` | no |
| <a name="input_rds_freeable_memory_critical_threshold"></a> [rds\_freeable\_memory\_critical\_threshold](#input\_rds\_freeable\_memory\_critical\_threshold) | Critical threshold for freeable memory | `number` | `null` | no |
| <a name="input_rds_freeable_memory_threshold_duration"></a> [rds\_freeable\_memory\_threshold\_duration](#input\_rds\_freeable\_memory\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_freeable_memory_warning_threshold"></a> [rds\_freeable\_memory\_warning\_threshold](#input\_rds\_freeable\_memory\_warning\_threshold) | Warning threshold for freeable memory | `number` | `null` | no |
| <a name="input_rds_instance_identifier"></a> [rds\_instance\_identifier](#input\_rds\_instance\_identifier) | Name of the RDS instance | `string` | `null` | no |
| <a name="input_rds_max_used_transaction_ids_critical_threshold"></a> [rds\_max\_used\_transaction\_ids\_critical\_threshold](#input\_rds\_max\_used\_transaction\_ids\_critical\_threshold) | Critical threshold for the maximum number of used transaction IDs | `number` | `null` | no |
| <a name="input_rds_max_used_transaction_ids_threshold_duration"></a> [rds\_max\_used\_transaction\_ids\_threshold\_duration](#input\_rds\_max\_used\_transaction\_ids\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_max_used_transaction_ids_warning_threshold"></a> [rds\_max\_used\_transaction\_ids\_warning\_threshold](#input\_rds\_max\_used\_transaction\_ids\_warning\_threshold) | Warning threshold for the maximum number of used transaction IDs | `number` | `null` | no |
| <a name="input_rds_read_latency_critical_threshold"></a> [rds\_read\_latency\_critical\_threshold](#input\_rds\_read\_latency\_critical\_threshold) | Critical threshold for the read latency | `number` | `null` | no |
| <a name="input_rds_read_latency_threshold_duration"></a> [rds\_read\_latency\_threshold\_duration](#input\_rds\_read\_latency\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_read_latency_warning_threshold"></a> [rds\_read\_latency\_warning\_threshold](#input\_rds\_read\_latency\_warning\_threshold) | Warning threshold for the read latency | `number` | `null` | no |
| <a name="input_rds_replica_lag_critical_threshold"></a> [rds\_replica\_lag\_critical\_threshold](#input\_rds\_replica\_lag\_critical\_threshold) | Critical threshold for replica lag | `number` | `null` | no |
| <a name="input_rds_replica_lag_threshold_duration"></a> [rds\_replica\_lag\_threshold\_duration](#input\_rds\_replica\_lag\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_replica_lag_warning_threshold"></a> [rds\_replica\_lag\_warning\_threshold](#input\_rds\_replica\_lag\_warning\_threshold) | Warning threshold for replica lag | `number` | `null` | no |
| <a name="input_rds_write_latency_critical_threshold"></a> [rds\_write\_latency\_critical\_threshold](#input\_rds\_write\_latency\_critical\_threshold) | Critical threshold for the write latency | `number` | `null` | no |
| <a name="input_rds_write_latency_threshold_duration"></a> [rds\_write\_latency\_threshold\_duration](#input\_rds\_write\_latency\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_rds_write_latency_warning_threshold"></a> [rds\_write\_latency\_warning\_threshold](#input\_rds\_write\_latency\_warning\_threshold) | Warning threshold for the write latency | `number` | `null` | no |
| <a name="input_ses_bounce_critical_threshold"></a> [ses\_bounce\_critical\_threshold](#input\_ses\_bounce\_critical\_threshold) | Bounce critical threshold in % | `number` | `null` | no |
| <a name="input_ses_bounce_threshold_duration"></a> [ses\_bounce\_threshold\_duration](#input\_ses\_bounce\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_ses_bounce_warning_threshold"></a> [ses\_bounce\_warning\_threshold](#input\_ses\_bounce\_warning\_threshold) | Bounce warning threshold in % | `number` | `null` | no |
| <a name="input_ses_complaint_critical_threshold"></a> [ses\_complaint\_critical\_threshold](#input\_ses\_complaint\_critical\_threshold) | Complaint critical threshold in % | `number` | `null` | no |
| <a name="input_ses_complaint_threshold_duration"></a> [ses\_complaint\_threshold\_duration](#input\_ses\_complaint\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `null` | no |
| <a name="input_ses_complaint_warning_threshold"></a> [ses\_complaint\_warning\_threshold](#input\_ses\_complaint\_warning\_threshold) | Complaint warning threshold in % | `number` | `null` | no |
| <a name="input_sqs_approx_age_message_critical_threshold"></a> [sqs\_approx\_age\_message\_critical\_threshold](#input\_sqs\_approx\_age\_message\_critical\_threshold) | Critical threshold for the approximated age of the oldest message in the queue | `number` | `500000` | no |
| <a name="input_sqs_approx_age_message_threshold_duration"></a> [sqs\_approx\_age\_message\_threshold\_duration](#input\_sqs\_approx\_age\_message\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_sqs_approx_age_message_warning_threshold"></a> [sqs\_approx\_age\_message\_warning\_threshold](#input\_sqs\_approx\_age\_message\_warning\_threshold) | Warning threshold for the approximated age of the oldest message in the queue | `number` | `250000` | no |
| <a name="input_sqs_message_dlq_critical_threshold"></a> [sqs\_message\_dlq\_critical\_threshold](#input\_sqs\_message\_dlq\_critical\_threshold) | Critical threshold for the number of messages in the dead-letter-queue | `number` | `5` | no |
| <a name="input_sqs_message_dlq_threshold_duration"></a> [sqs\_message\_dlq\_threshold\_duration](#input\_sqs\_message\_dlq\_threshold\_duration) | The duration in seconds for the threshold to be breached before an alert is triggered | `number` | `300` | no |
| <a name="input_sqs_message_dlq_warning_threshold"></a> [sqs\_message\_dlq\_warning\_threshold](#input\_sqs\_message\_dlq\_warning\_threshold) | Warning threshold for the number of messages in the dead-letter-queue | `number` | `1` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->