resource "newrelic_nrql_alert_condition" "healthynodedashboard" {
  count                        = var.create_opensearch_alerts ? 1 : 0
  policy_id                    = var.newrelic_alert_policy
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
  policy_id                    = var.newrelic_alert_policy
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
  policy_id                    = var.newrelic_alert_policy
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
