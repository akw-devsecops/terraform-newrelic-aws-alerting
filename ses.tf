resource "newrelic_nrql_alert_condition" "ses_bounce" {
  count                        = var.create_ses_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "bounce-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT (aws.ses.Bounce / aws.ses.Delivery) * 100  FROM Metric"
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
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "complaint-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT (aws.ses.Complaint / aws.ses.Delivery) * 100  FROM Metric"
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

resource "newrelic_nrql_alert_condition" "ses_send_attemptes" {
  count                        = var.create_ses_alerts ? 1 : 0
  policy_id                    = newrelic_alert_policy.this.id
  type                         = "static"
  name                         = "sent-attemptes-dashboard-${var.env}"
  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT (aws.ses.Send / aws.ses.Delivery) * 100  FROM Metric"
  }

  critical {
    operator              = "below_or_equals"
    threshold             = var.ses_send_attemptes_critical_threshold
    threshold_duration    = var.ses_send_attemptes_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "below_or_equals"
    threshold             = var.ses_send_attemptes_warning_threshold
    threshold_duration    = var.ses_send_attemptes_threshold_duration
    threshold_occurrences = "all"
  }
}


# policy 
resource "newrelic_alert_policy" "ses" {
  count               = var.create_ses_alerts ? 1 : 0
  name                = "${var.ses_account_name}-${var.env}"
  incident_preference = "PER_CONDITION"
}

# workflow
resource "newrelic_workflow" "ses" {
  count                 = var.create_ses_alerts ? 1 : 0
  name                  = "workflow-${var.ses_account_name}-${var.env}"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "${var.ses_account_name}-${var.env}-filter-policy"

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

resource "newrelic_notification_channel" "google_chat_ses" {
  count          = var.create_ses_alerts ? 1 : 0
  name           = "${var.ses_account_name}-${var.env}-google-chat-notification-channel"
  type           = "WEBHOOK"
  destination_id = newrelic_notification_destination.google_chat.id
  product        = "IINT" // (Workflows)

  property {
    key   = "payload"
    value = local.google_chat_template
    label = "Payload Template"
  }
}

resource "newrelic_notification_destination" "google_chat_ses" {
  count = var.create_ses_alerts ? 1 : 0
  name  = "${var.ses_account_name}-${var.env}-google-chat-destination"
  type  = "WEBHOOK"

  property {
    key   = "url"
    value = var.google_chat_url
  }
}
