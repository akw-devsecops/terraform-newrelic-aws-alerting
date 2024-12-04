resource "newrelic_nrql_alert_condition" "cpu_utilization" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "cpu-utilization-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.CPUUtilization) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }


  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_cpu_critical_threshold
    threshold_duration    = var.rds_cpu_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_cpu_warning_threshold
    threshold_duration    = var.rds_cpu_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "database_connection" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "database-connections-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.DatabaseConnections) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_database_connections_critical_threshold
    threshold_duration    = var.rds_database_connections_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_database_connections_warning_threshold
    threshold_duration    = var.rds_database_connections_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "freeable_memory" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "freeable-memory-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.FreeableMemory) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "below_or_equals"
    threshold             = var.rds_freeable_memory_critical_threshold
    threshold_duration    = var.rds_freeable_memory_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "below_or_equals"
    threshold             = var.rds_freeable_memory_warning_threshold
    threshold_duration    = var.rds_freeable_memory_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "free_local_storage" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "free-local-storage-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.FreeLocalStorage) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "below_or_equals"
    threshold             = var.rds_free_local_storage_critical_threshold
    threshold_duration    = var.rds_free_local_storage_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "below_or_equals"
    threshold             = var.rds_free_local_storage_warning_threshold
    threshold_duration    = var.rds_free_local_storage_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "free_storage_space" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "free-storage-space-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.FreeLocalStorage) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "below_or_equals"
    threshold             = var.rds_free_local_storage_critical_threshold
    threshold_duration    = var.rds_free_local_storage_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "below_or_equals"
    threshold             = var.rds_free_local_storage_warning_threshold
    threshold_duration    = var.rds_free_local_storage_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "max_used_transaction_ids" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "max-used-transaction-ids-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.MaximumUsedTransactionIDs) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_max_used_transaction_ids_critical_threshold
    threshold_duration    = var.rds_max_used_transaction_ids_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_max_used_transaction_ids_warning_threshold
    threshold_duration    = var.rds_max_used_transaction_ids_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "read_latency" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "read-latency-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.rds.ReadLatency) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_read_latency_critical_threshold
    threshold_duration    = var.rds_read_latency_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_read_latency_warning_threshold
    threshold_duration    = var.rds_read_latency_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "replica_lag" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "replica-lag-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT max(aws.rds.ReplicaLag) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_replica_lag_critical_threshold
    threshold_duration    = var.rds_replica_lag_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_replica_lag_warning_threshold
    threshold_duration    = var.rds_replica_lag_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "write_latency" {
  count                        = var.create_rds_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "write-latency-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT percentile(aws.rds.WriteLatency, 90) FROM Metric WHERE aws.rds.DBInstanceIdentifier = '${var.rds_instance_identifier}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.rds_write_latency_critical_threshold
    threshold_duration    = var.rds_write_latency_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.rds_write_latency_warning_threshold
    threshold_duration    = var.rds_write_latency_threshold_duration
    threshold_occurrences = "all"
  }
}

# policy 
resource "newrelic_alert_policy" "rds" {
  count               = var.create_rds_alerts ? 1 : 0
  name                = "${var.rds_app_name}-${var.env}"
  incident_preference = "PER_CONDITION"
}

# workflow
resource "newrelic_workflow" "rds" {
  count                 = var.create_rds_alerts ? 1 : 0
  name                  = "workflow-${var.rds_app_name}-${var.env}"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "${var.rds_app_name}-${var.env}-filter-policy"

    # 'type' will be deprecated in the future
    type = "FILTER"

    predicate {
      attribute = "labels.policyIds"
      operator  = "EXACTLY_MATCHES"
      values    = [newrelic_alert_policy.this.id]
    }
  }

  destination {
    channel_id            = newrelic_notification_channel.google_chat.id
    notification_triggers = var.google_chat_notification_triggers
  }
}

resource "newrelic_notification_channel" "google_chat_rds" {
  count          = var.create_rds_alerts ? 1 : 0
  name           = "${var.rds_app_name}-${var.env}-google-chat-notification-channel"
  type           = "WEBHOOK"
  destination_id = newrelic_notification_destination.google_chat.id
  product        = "IINT" // (Workflows)

  property {
    key   = "payload"
    value = local.google_chat_template
    label = "Payload Template"
  }
}

resource "newrelic_notification_destination" "google_chat_rds" {
  count = var.create_rds_alerts ? 1 : 0
  name  = "${var.rds_app_name}-${var.env}-google-chat-destination"
  type  = "WEBHOOK"

  property {
    key   = "url"
    value = var.google_chat_url
  }
}
