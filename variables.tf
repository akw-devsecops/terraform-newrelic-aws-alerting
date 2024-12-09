variable "env" {
  type        = string
  description = "Environment"
}

variable "app_name" {
  type        = string
  description = "Name of application"
}

variable "google_chat_url" {
  type        = string
  description = "URL of your google chat space"
}

variable "google_chat_notification_triggers" {
  description = "The issue events to notify on for google chat notifications. Valid values are ACTIVATED, ACKNOWLEDGED, PRIORITY_CHANGED, CLOSED or OTHER_UPDATES"
  type        = list(string)
  default     = ["ACTIVATED", "ACKNOWLEDGED", "PRIORITY_CHANGED", "CLOSED", "OTHER_UPDATES"]
}


######################
### AWS SQS ###
######################
variable "queue_arn" {
  type        = string
  description = "Arn of the queue to be monitored"
  default     = null
}

variable "queue_arn_dead_letter" {
  type        = string
  description = "Arn of the dead-letter-queue to be monitored"
  default     = null
}

variable "create_sqs_alerts" {
  type        = bool
  description = "Create alerts for SQS"
  default     = true
}

variable "create_dlq_alert" {
  type        = bool
  description = "Create an alert for the dead-letter-queue"
  default     = false
}

variable "sqs_approx_age_message_critical_threshold" {
  type        = number
  description = "Critical threshold for the approximated age of the oldest message in the queue"
  default     = null
}

variable "sqs_approx_age_message_warning_threshold" {
  type        = number
  description = "Warning threshold for the approximated age of the oldest message in the queue"
  default     = null
}

variable "sqs_approx_age_message_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "sqs_message_dlq_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of messages in the dead-letter-queue"
  default     = null
}

variable "sqs_message_dlq_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of messages in the dead-letter-queue"
  default     = null
}

variable "sqs_message_dlq_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}


######################
### AWS OpenSearch ###
######################
variable "create_opensearch_alerts" {
  type        = bool
  description = "Create alerts for OpenSearch"
  default     = false
}

variable "opensearch_cluster_name" {
  type        = string
  description = "Name of the opensearch cluster"
  default     = null
}

variable "opensearch_healthynodes_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of healthy nodes in the cluster"
  default     = null
}

variable "opensearch_healthynodes_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of healthy nodes in the cluster"
  default     = null
}

variable "opensearch_healthynodes_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "opensearch_clusterstatus_yellow_threshold" {
  type        = number
  description = "Warning threshold for the number of nodes in yellow status"
  default     = null
}

variable "opensearch_clusterstatus_red_threshold" {
  type        = number
  description = "Critical threshold for the number of nodes in red status"
  default     = null
}

variable "opensearch_clusterstatus_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}


###############
### AWS RDS ###
###############
variable "create_rds_alerts" {
  type        = bool
  description = "Create alerts for RDS"
  default     = false
}
variable "rds_instance_identifier" {
  type        = string
  description = "Name of the RDS instance"
  default     = null
}

variable "rds_cpu_critical_threshold" {
  type        = number
  description = "Critical threshold for the CPU utilization of the RDS instance"
  default     = null
}

variable "rds_cpu_warning_threshold" {
  type        = number
  description = "Warning threshold for the CPU utilization of the RDS instance"
  default     = null
}

variable "rds_cpu_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_database_connections_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of database connections"
  default     = null
}

variable "rds_database_connections_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of database connections"
  default     = null
}

variable "rds_database_connections_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_freeable_memory_critical_threshold" {
  type        = number
  description = "Critical threshold for freeable memory"
  default     = null
}

variable "rds_freeable_memory_warning_threshold" {
  type        = number
  description = "Warning threshold for freeable memory"
  default     = null
}

variable "rds_freeable_memory_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_free_local_storage_critical_threshold" {
  type        = number
  description = "Critical threshold for free local storage"
  default     = null
}

variable "rds_free_local_storage_warning_threshold" {
  type        = number
  description = "Warning threshold for free local storage"
  default     = null
}

variable "rds_free_local_storage_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_free_storage_space_critical_threshold" {
  type        = number
  description = "Critical threshold for free storage space"
  default     = null
}

variable "rds_free_storage_space_warning_threshold" {
  type        = number
  description = "Warning threshold for free storage space"
  default     = null
}

variable "rds_free_storage_space_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_max_used_transaction_ids_critical_threshold" {
  type        = number
  description = "Critical threshold for the maximum number of used transaction IDs"
  default     = null
}

variable "rds_max_used_transaction_ids_warning_threshold" {
  type        = number
  description = "Warning threshold for the maximum number of used transaction IDs"
  default     = null
}

variable "rds_max_used_transaction_ids_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_read_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the read latency"
  default     = null
}

variable "rds_read_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the read latency"
  default     = null
}

variable "rds_read_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_replica_lag_critical_threshold" {
  type        = number
  description = "Critical threshold for replica lag"
  default     = null
}

variable "rds_replica_lag_warning_threshold" {
  type        = number
  description = "Warning threshold for replica lag"
  default     = null
}

variable "rds_replica_lag_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "rds_write_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the write latency"
  default     = null
}

variable "rds_write_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the write latency"
  default     = null
}

variable "rds_write_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}


###############
### AWS SES ###
###############
variable "create_ses_alerts" {
  type        = bool
  description = "Create alerts for AWS SES"
  default     = false
}

variable "ses_bounce_critical_threshold" {
  type        = number
  description = "Bounce critical threshold in %"
  default     = null
}

variable "ses_bounce_warning_threshold" {
  type        = number
  description = "Bounce warning threshold in %"
  default     = null
}

variable "ses_bounce_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}

variable "ses_complaint_critical_threshold" {
  type        = number
  description = "Complaint critical threshold in %"
  default     = null
}

variable "ses_complaint_warning_threshold" {
  type        = number
  description = "Complaint warning threshold in %"
  default     = null
}

variable "ses_complaint_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = null
}
