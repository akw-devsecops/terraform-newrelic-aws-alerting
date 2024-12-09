module "sqs_alerts" {
  source = "./modules/sqs"

  newrelic_alert_policy = newrelic_alert_policy.this.id
  create_sqs_alerts     = var.create_sqs_alerts
  create_dlq_alert      = var.create_dlq_alert
  env                   = var.env

  queue_arn             = var.queue_arn
  queue_arn_dead_letter = var.queue_arn_dead_letter ? var.queue_arn_dead_letter : null

  sqs_approx_age_message_critical_threshold = var.sqs_approx_age_message_critical_threshold != null ? var.sqs_approx_age_message_critical_threshold : null
  sqs_approx_age_message_warning_threshold  = var.sqs_approx_age_message_warning_threshold != null ? var.sqs_approx_age_message_warning_threshold : null
  sqs_approx_age_message_threshold_duration = var.sqs_approx_age_message_threshold_duration != null ? var.sqs_approx_age_message_threshold_duration : null
  sqs_message_dlq_critical_threshold        = var.sqs_message_dlq_critical_threshold != null ? var.sqs_message_dlq_critical_threshold : null
  sqs_message_dlq_warning_threshold         = var.sqs_message_dlq_warning_threshold != null ? var.sqs_message_dlq_warning_threshold : null
  sqs_message_dlq_threshold_duration        = var.sqs_message_dlq_threshold_duration != null ? var.sqs_message_dlq_threshold_duration : null
}

module "ses_alerts" {
  source = "./modules/ses"

  newrelic_alert_policy = newrelic_alert_policy.this.id
  create_ses_alerts     = var.create_ses_alerts
  env                   = var.env

  ses_bounce_critical_threshold    = var.ses_bounce_critical_threshold != null ? var.ses_bounce_critical_threshold : null
  ses_bounce_warning_threshold     = var.ses_bounce_warning_threshold != null ? var.ses_bounce_warning_threshold : null
  ses_bounce_threshold_duration    = var.ses_bounce_threshold_duration != null ? var.ses_bounce_threshold_duration : null
  ses_complaint_critical_threshold = var.ses_complaint_critical_threshold != null ? var.ses_complaint_critical_threshold : null
  ses_complaint_warning_threshold  = var.ses_complaint_warning_threshold != null ? var.ses_complaint_warning_threshold : null
  ses_complaint_threshold_duration = var.ses_complaint_threshold_duration != null ? var.ses_complaint_threshold_duration : null
}


module "opensearch_alerts" {
  source = "./modules/opensearch"

  newrelic_alert_policy    = newrelic_alert_policy.this.id
  create_opensearch_alerts = var.create_opensearch_alerts
  env                      = var.env

  opensearch_cluster_name                     = var.opensearch_cluster_name ? var.opensearch_cluster_name : null
  opensearch_healthynodes_critical_threshold  = var.opensearch_healthynodes_critical_threshold != null ? var.opensearch_healthynodes_critical_threshold : null
  opensearch_healthynodes_warning_threshold   = var.opensearch_healthynodes_warning_threshold != null ? var.opensearch_healthynodes_warning_threshold : null
  opensearch_healthynodes_threshold_duration  = var.opensearch_healthynodes_threshold_duration != null ? var.opensearch_healthynodes_threshold_duration : null
  opensearch_clusterstatus_yellow_threshold   = var.opensearch_clusterstatus_yellow_threshold != null ? var.opensearch_clusterstatus_yellow_threshold : null
  opensearch_clusterstatus_red_threshold      = var.opensearch_clusterstatus_red_threshold != null ? var.opensearch_clusterstatus_red_threshold : null
  opensearch_clusterstatus_threshold_duration = var.opensearch_clusterstatus_threshold_duration != null ? var.opensearch_clusterstatus_threshold_duration : null

}

module "rds_alerts" {
  source = "./modules/rds"

  newrelic_alert_policy = newrelic_alert_policy.this.id
  create_rds_alerts     = var.create_rds_alerts
  env                   = var.env

  rds_instance_identifier = var.rds_instance_identifier ? var.rds_instance_identifier : null

  rds_cpu_critical_threshold                      = var.rds_cpu_critical_threshold != null ? var.rds_cpu_critical_threshold : null
  rds_cpu_warning_threshold                       = var.rds_cpu_warning_threshold != null ? var.rds_cpu_warning_threshold : null
  rds_cpu_threshold_duration                      = var.rds_cpu_threshold_duration != null ? var.rds_cpu_threshold_duration : null
  rds_database_connections_critical_threshold     = var.rds_database_connections_critical_threshold != null ? var.rds_database_connections_critical_threshold : null
  rds_database_connections_warning_threshold      = var.rds_database_connections_warning_threshold != null ? var.rds_database_connections_warning_threshold : null
  rds_database_connections_threshold_duration     = var.rds_database_connections_threshold_duration != null ? var.rds_database_connections_threshold_duration : null
  rds_freeable_memory_critical_threshold          = var.rds_freeable_memory_critical_threshold != null ? var.rds_freeable_memory_critical_threshold : null
  rds_freeable_memory_warning_threshold           = var.rds_freeable_memory_warning_threshold != null ? var.rds_freeable_memory_warning_threshold : null
  rds_freeable_memory_threshold_duration          = var.rds_freeable_memory_threshold_duration != null ? var.rds_freeable_memory_threshold_duration : null
  rds_free_local_storage_critical_threshold       = var.rds_free_local_storage_critical_threshold != null ? var.rds_free_local_storage_critical_threshold : null
  rds_free_local_storage_warning_threshold        = var.rds_free_local_storage_warning_threshold != null ? var.rds_free_local_storage_warning_threshold : null
  rds_free_local_storage_threshold_duration       = var.rds_free_local_storage_threshold_duration != null ? var.rds_free_local_storage_threshold_duration : null
  rds_free_storage_space_critical_threshold       = var.rds_free_local_storage_critical_threshold != null ? var.rds_free_local_storage_critical_threshold : null
  rds_free_storage_space_warning_threshold        = var.rds_free_local_storage_warning_threshold != null ? var.rds_free_local_storage_warning_threshold : null
  rds_free_storage_space_threshold_duration       = var.rds_free_local_storage_threshold_duration != null ? var.rds_free_local_storage_threshold_duration : null
  rds_max_used_transaction_ids_critical_threshold = var.rds_max_used_transaction_ids_critical_threshold != null ? var.rds_max_used_transaction_ids_critical_threshold : null
  rds_max_used_transaction_ids_warning_threshold  = var.rds_max_used_transaction_ids_warning_threshold != null ? var.rds_max_used_transaction_ids_warning_threshold : null
  rds_max_used_transaction_ids_threshold_duration = var.rds_max_used_transaction_ids_threshold_duration != null ? var.rds_max_used_transaction_ids_threshold_duration : null
  rds_read_latency_critical_threshold             = var.rds_read_latency_critical_threshold != null ? var.rds_read_latency_critical_threshold : null
  rds_read_latency_warning_threshold              = var.rds_read_latency_warning_threshold != null ? var.rds_read_latency_warning_threshold : null
  rds_read_latency_threshold_duration             = var.rds_read_latency_threshold_duration != null ? var.rds_read_latency_threshold_duration : null
  rds_replica_lag_critical_threshold              = var.rds_replica_lag_critical_threshold != null ? var.rds_replica_lag_critical_threshold : null
  rds_replica_lag_warning_threshold               = var.rds_replica_lag_warning_threshold != null ? var.rds_replica_lag_warning_threshold : null
  rds_replica_lag_threshold_duration              = var.rds_replica_lag_threshold_duration != null ? var.rds_replica_lag_threshold_duration : null
  rds_write_latency_critical_threshold            = var.rds_write_latency_critical_threshold != null ? var.rds_write_latency_critical_threshold : null
  rds_write_latency_warning_threshold             = var.rds_write_latency_warning_threshold != null ? var.rds_write_latency_warning_threshold : null
  rds_write_latency_threshold_duration            = var.rds_write_latency_threshold_duration != null ? var.rds_write_latency_threshold_duration : null
}