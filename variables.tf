variable "env" {
  type        = string
  description = "Environment"
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

variable "opensearch_app_name" {
  type        = string
  description = "Name of your application"
}

variable "opensearch_healthynodes_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of healthy nodes in the cluster"
  default     = 1
}

variable "opensearch_healthynodes_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of healthy nodes in the cluster"
  default     = 2
}

variable "opensearch_healthynodes_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
}

variable "opensearch_clusterstatus_yellow_threshold" {
  type        = number
  description = "Warning threshold for the number of nodes in yellow status"
  default     = 1
}

variable "opensearch_clusterstatus_red_threshold" {
  type        = number
  description = "Critical threshold for the number of nodes in red status"
  default     = 1
}

variable "opensearch_clusterstatus_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
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

variable "rds_app_name" {
  type        = string
  description = "Name of your application"
}

variable "rds_cpu_critical_threshold" {
  type        = number
  description = "Critical threshold for the CPU utilization of the RDS instance"
  default     = 90
}

variable "rds_cpu_warning_threshold" {
  type        = number
  description = "Warning threshold for the CPU utilization of the RDS instance"
  default     = 75
}

variable "rds_cpu_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 75
}

variable "rds_database_connections_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of database connections"
  default     = 200
}

variable "rds_database_connections_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of database connections"
  default     = 75
}

variable "rds_database_connections_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
}

variable "rds_freeable_memory_critical_threshold" {
  type        = number
  description = "Critical threshold for freeable memory"
  default     = 25
}

variable "rds_freeable_memory_warning_threshold" {
  type        = number
  description = "Warning threshold for freeable memory"
  default     = 15
}

variable "rds_freeable_memory_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
}

variable "rds_free_local_storage_critical_threshold" {
  type        = number
  description = "Critical threshold for free local storage"
  default     = 10
}

variable "rds_free_local_storage_warning_threshold" {
  type        = number
  description = "Warning threshold for free local storage"
  default     = 20
}

variable "rds_free_local_storage_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
}

variable "rds_free_storage_space_critical_threshold" {
  type        = number
  description = "Critical threshold for free storage space"
  default     = 5
}

variable "rds_free_storage_space_warning_threshold" {
  type        = number
  description = "Warning threshold for free storage space"
  default     = 10
}

variable "rds_free_storage_space_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
}

variable "rds_max_used_transaction_ids_critical_threshold" {
  type        = number
  description = "Critical threshold for the maximum number of used transaction IDs"
  default     = 5
}

variable "rds_max_used_transaction_ids_warning_threshold" {
  type        = number
  description = "Warning threshold for the maximum number of used transaction IDs"
  default     = 10
}

variable "rds_max_used_transaction_ids_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}

variable "rds_read_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the read latency"
  default     = 40
}

variable "rds_read_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the read latency"
  default     = 20
}

variable "rds_read_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}

variable "rds_replica_lag_critical_threshold" {
  type        = number
  description = "Critical threshold for replica lag"
  default     = 60
}

variable "rds_replica_lag_warning_threshold" {
  type        = number
  description = "Warning threshold for replica lag"
  default     = 30
}

variable "rds_replica_lag_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}

variable "rds_write_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the write latency"
  default     = 40
}

variable "rds_write_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the write latency"
  default     = 20
}

variable "rds_write_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}


###############
### AWS SES ###
###############
variable "create_ses_alerts" {
  type        = bool
  description = "Create alerts for AWS SES"
  default     = false
}

variable "ses_account_name" {
  type        = string
  description = "Account name in which ses is enabled"
  default     = null
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

variable "ses_send_attemptes_critical_threshold" {
  type        = number
  description = "Send attempts critical threshold in %"
  default     = 5
}

variable "ses_send_attemptes_warning_threshold" {
  type        = number
  description = "Send attemptes warning threshold in %"
  default     = 20
}

variable "ses_send_attemptes_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
}
