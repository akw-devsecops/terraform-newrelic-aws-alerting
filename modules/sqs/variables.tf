variable "newrelic_alert_policy" {
  type        = any
  description = "New Relic alert policy"
}

variable "env" {
  type = string
}

variable "queue_arn" {
  type        = string
  description = "Arn of the queue to be monitored"
  default     = null
  nullable    = false

}

variable "queue_arn_dead_letter" {
  type        = string
  description = "Arn of the dead-letter-queue to be monitored"
  default     = null
  nullable    = false
}

variable "create_sqs_alerts" {
  type        = bool
  description = "Create alerts for SQS"
  default     = true
  nullable    = false
}

variable "create_dlq_alert" {
  type        = bool
  description = "Create an alert for the dead-letter-queue"
  default     = false
  nullable    = false
}

variable "sqs_approx_age_message_critical_threshold" {
  type        = number
  description = "Critical threshold for the approximated age of the oldest message in the queue"
  default     = 500000
  nullable    = false
}

variable "sqs_approx_age_message_warning_threshold" {
  type        = number
  description = "Warning threshold for the approximated age of the oldest message in the queue"
  default     = 250000
  nullable    = false
}

variable "sqs_approx_age_message_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

variable "sqs_message_dlq_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of messages in the dead-letter-queue"
  default     = 5
  nullable    = false
}

variable "sqs_message_dlq_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of messages in the dead-letter-queue"
  default     = 1
  nullable    = false
}

variable "sqs_message_dlq_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

