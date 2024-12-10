resource "newrelic_nrql_alert_condition" "approximated_age_of_messages" {
  count     = var.create_sqs_alerts != null ? 1 : 0
  policy_id = var.newrelic_alert_policy

  type = "static"
  name = "approximated-age-of-oldest-message-${var.env}"

  enabled                      = true
  violation_time_limit_seconds = 86400

  nrql {
    query = "SELECT max(aws.sqs.ApproximateAgeOfOldestMessage) FROM Metric WHERE aws.sqs.queueArn = '${var.queue_arn}'"
  }

  critical {
    operator              = "above"
    threshold             = var.sqs_approx_age_message_critical_threshold
    threshold_duration    = var.sqs_approx_age_message_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above"
    threshold             = var.sqs_approx_age_message_warning_threshold
    threshold_duration    = var.sqs_approx_age_message_threshold_duration
    threshold_occurrences = "all"
  }
}

resource "newrelic_nrql_alert_condition" "messages_in_dlq" {
  count = var.create_dlq_alert != null ? 1 : 0

  policy_id = var.newrelic_alert_policy
  type      = "static"
  name      = "message-in-dlq-${var.env}"

  enabled                      = true
  violation_time_limit_seconds = 86400

  fill_option = "static"
  fill_value  = 0

  nrql {
    query = "SELECT sum(aws.sqs.NumberOfMessagesReceived) FROM Metric WHERE aws.sqs.queueArn = '${var.queue_arn_dead_letter}'"
  }

  critical {
    operator              = "above_or_equals"
    threshold             = var.sqs_message_dlq_critical_threshold
    threshold_duration    = var.sqs_message_dlq_threshold_duration
    threshold_occurrences = "all"
  }

  warning {
    operator              = "above_or_equals"
    threshold             = var.sqs_message_dlq_warning_threshold
    threshold_duration    = var.sqs_message_dlq_threshold_duration
    threshold_occurrences = "all"
  }
}
