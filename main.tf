resource "newrelic_alert_policy" "this" {
  name                = "${var.app_name}-${var.env}"
  incident_preference = "PER_CONDITION"
}

resource "newrelic_workflow" "this" {
  name                  = "workflow-${var.app_name}-${var.env}"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "${var.app_name}-${var.env}-filter-policy"

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

resource "newrelic_notification_channel" "google_chat" {
  name           = "${var.app_name}-${var.env}-google-chat-notification-channel"
  type           = "WEBHOOK"
  destination_id = newrelic_notification_destination.google_chat.id
  product        = "IINT" // (Workflows)

  property {
    key   = "payload"
    value = local.google_chat_template
    label = "Payload Template"
  }
}

resource "newrelic_notification_destination" "google_chat" {
  name = "${var.app_name}-${var.env}-google-chat-destination"
  type = "WEBHOOK"

  property {
    key   = "url"
    value = var.google_chat_url
  }
}
