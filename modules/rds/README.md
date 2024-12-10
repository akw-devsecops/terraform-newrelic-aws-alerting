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
| [newrelic_nrql_alert_condition.cpu_utilization](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.database_connection](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.free_local_storage](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.free_storage_space](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.freeable_memory](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.max_used_transaction_ids](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.read_latency](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.replica_lag](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |
| [newrelic_nrql_alert_condition.write_latency](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | Environment name | `string` | n/a | yes |
| <a name="input_newrelic_alert_policy"></a> [newrelic\_alert\_policy](#input\_newrelic\_alert\_policy) | New Relic alert policy | `any` | n/a | yes |
| <a name="input_create_rds_alerts"></a> [create\_rds\_alerts](#input\_create\_rds\_alerts) | Create alerts for RDS | `bool` | `true` | no |
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

## Outputs

No outputs.
<!-- END_TF_DOCS -->