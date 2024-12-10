variable "newrelic_alert_policy" {
  type        = any
  description = "New Relic alert policy"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "create_rds_alerts" {
  type        = bool
  description = "Create alerts for RDS"
  default     = true
  nullable    = false
}

variable "rds_instance_identifier" {
  type        = string
  description = "Name of the RDS instance"
  default     = null
}

variable "rds_cpu_critical_threshold" {
  type        = number
  description = "Critical threshold for the CPU utilization of the RDS instance"
  default     = 90
  nullable    = false
}

variable "rds_cpu_warning_threshold" {
  type        = number
  description = "Warning threshold for the CPU utilization of the RDS instance"
  default     = 75
  nullable    = false
}

variable "rds_cpu_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
  nullable    = false
}

variable "rds_database_connections_critical_threshold" {
  type        = number
  description = "Critical threshold for the number of database connections"
  default     = 200
  nullable    = false
}

variable "rds_database_connections_warning_threshold" {
  type        = number
  description = "Warning threshold for the number of database connections"
  default     = 75
  nullable    = false
}

variable "rds_database_connections_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

variable "rds_freeable_memory_critical_threshold" {
  type        = number
  description = "Critical threshold for freeable memory"
  default     = 25
  nullable    = false
}

variable "rds_freeable_memory_warning_threshold" {
  type        = number
  description = "Warning threshold for freeable memory"
  default     = 15
  nullable    = false
}

variable "rds_freeable_memory_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

variable "rds_free_local_storage_critical_threshold" {
  type        = number
  description = "Critical threshold for free local storage"
  default     = 10
  nullable    = false
}

variable "rds_free_local_storage_warning_threshold" {
  type        = number
  description = "Warning threshold for free local storage"
  default     = 20
  nullable    = false
}

variable "rds_free_local_storage_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

variable "rds_free_storage_space_critical_threshold" {
  type        = number
  description = "Critical threshold for free storage space"
  default     = 5
  nullable    = false
}

variable "rds_free_storage_space_warning_threshold" {
  type        = number
  description = "Warning threshold for free storage space"
  default     = 10
  nullable    = false
}

variable "rds_free_storage_space_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 300
  nullable    = false
}

variable "rds_max_used_transaction_ids_critical_threshold" {
  type        = number
  description = "Critical threshold for the maximum number of used transaction IDs"
  default     = 5
  nullable    = false
}

variable "rds_max_used_transaction_ids_warning_threshold" {
  type        = number
  description = "Warning threshold for the maximum number of used transaction IDs"
  default     = 10
  nullable    = false
}

variable "rds_max_used_transaction_ids_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
  nullable    = false
}

variable "rds_read_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the read latency"
  default     = 40
  nullable    = false
}

variable "rds_read_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the read latency"
  default     = 20
  nullable    = false
}

variable "rds_read_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
  nullable    = false
}

variable "rds_replica_lag_critical_threshold" {
  type        = number
  description = "Critical threshold for replica lag"
  default     = 60
  nullable    = false
}

variable "rds_replica_lag_warning_threshold" {
  type        = number
  description = "Warning threshold for replica lag"
  default     = 30
  nullable    = false
}

variable "rds_replica_lag_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
  nullable    = false
}

variable "rds_write_latency_critical_threshold" {
  type        = number
  description = "Critical threshold for the write latency"
  default     = 40
  nullable    = false
}

variable "rds_write_latency_warning_threshold" {
  type        = number
  description = "Warning threshold for the write latency"
  default     = 20
  nullable    = false
}

variable "rds_write_latency_threshold_duration" {
  type        = number
  description = "The duration in seconds for the threshold to be breached before an alert is triggered"
  default     = 60
  nullable    = false
}
