resource "newrelic_nrql_alert_condition" "healthynodedashboard" {
  count                        = var.create_opensearch_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "healthy-nodes-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT sum(aws.es.OpenSearchDashboardsHealthyNodes) FROM Metric WHERE aws.es.DomainName = '${var.opensearch_cluster_name}'"
  }

  critical {
    operator              = "below"
    threshold             = var.opensearch_healthynodes_critical_threshold
    threshold_duration    = var.opensearch_healthynodes_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "below"
    threshold             = var.opensearch_healthynodes_warning_threshold
    threshold_duration    = var.opensearch_healthynodes_threshold_duration
    threshold_occurrences = "all"
  }
}


resource "newrelic_nrql_alert_condition" "clusterstatus-yellow-dashboard" {
  count                        = var.create_opensearch_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "clusterhealth-yellow-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.es.ClusterStatus.yellow) FROM Metric WHERE aws.es.DomainName = '${var.opensearch_cluster_name}'"
  }

  warning {
    operator              = "equals"
    threshold             = var.opensearch_clusterstatus_yellow_threshold
    threshold_duration    = var.opensearch_clusterstatus_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "clusterstatus-red-dashboard" {
  count                        = var.create_opensearch_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "clusterhealth-red-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT average(aws.es.ClusterStatus.red) FROM Metric WHERE aws.es.DomainName = '${var.opensearch_cluster_name}'"
  }

  critical {
    operator              = "equals"
    threshold             = var.opensearch_clusterstatus_red_threshold
    threshold_duration    = var.opensearch_clusterstatus_threshold_duration
    threshold_occurrences = "all"
  }
}

# policy 
resource "newrelic_alert_policy" "opensearch" {
  count               = var.create_opensearch_alerts ? 1 : 0
  name                = "${var.opensearch_app_name}-${var.env}"
  incident_preference = "PER_CONDITION"
}

# workflow
resource "newrelic_workflow" "opensearch" {
  count                 = var.create_opensearch_alerts ? 1 : 0
  name                  = "workflow-${var.opensearch_app_name}-${var.env}"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "${var.opensearch_app_name}-${var.env}-filter-policy"

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

resource "newrelic_notification_channel" "google_chat_opensearch" {
  count          = var.create_opensearch_alerts ? 1 : 0
  name           = "${var.opensearch_app_name}-${var.env}-google-chat-notification-channel"
  type           = "WEBHOOK"
  destination_id = newrelic_notification_destination.google_chat.id
  product        = "IINT" // (Workflows)

  property {
    key   = "payload"
    value = local.google_chat_template
    label = "Payload Template"
  }
}

resource "newrelic_notification_destination" "google_chat_opensearch" {
  count = var.create_opensearch_alerts ? 1 : 0
  name  = "${var.opensearch_app_name}-${var.env}-google-chat-destination"
  type  = "WEBHOOK"

  property {
    key   = "url"
    value = var.google_chat_url
  }
}
