variable "newrelic_alert_policy" {
  type        = any
  description = "New Relic alert policy"
}

variable "create_ses_alerts" {
  type        = bool
  description = "Create alerts for AWS SES"
  default     = true
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "ses_bounce_critical_threshold" {
  type        = number
  description = "Bounce critical threshold in %"
  default     = 8
}

variable "ses_bounce_warning_threshold" {
  type        = number
  description = "Bounce warning threshold in %"
  default     = 4
}

variable "ses_bounce_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}

variable "ses_complaint_critical_threshold" {
  type        = number
  description = "Complaint critical threshold in %"
  default     = 0.35
}

variable "ses_complaint_warning_threshold" {
  type        = number
  description = "Complaint warning threshold in %"
  default     = 0.08
}

variable "ses_complaint_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}
