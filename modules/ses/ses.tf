resource "newrelic_nrql_alert_condition" "ses_bounce" {
  count                        = var.create_ses_alerts ? 1 : 0
  policy_id                    = var.newrelic_alert_policy
  type                         = "static"
  name                         = "bounce-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT max(`aws.ses.Reputation.BounceRate`) * 100 FROM Metric FACET `aws.ses.ses:configuration-set`"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.ses_bounce_critical_threshold
    threshold_duration    = var.ses_bounce_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.ses_bounce_warning_threshold
    threshold_duration    = var.ses_bounce_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "ses_complaint" {
  count                        = var.create_ses_alerts ? 1 : 0
  policy_id                    = var.newrelic_alert_policy
  type                         = "static"
  name                         = "complaint-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT max(`aws.ses.Reputation.ComplaintRate`) * 100 FROM Metric FACET `aws.ses.ses:configuration-set`"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.ses_complaint_critical_threshold
    threshold_duration    = var.ses_complaint_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.ses_complaint_warning_threshold
    threshold_duration    = var.ses_complaint_threshold_duration
    threshold_occurrences = "all"
  }
}
