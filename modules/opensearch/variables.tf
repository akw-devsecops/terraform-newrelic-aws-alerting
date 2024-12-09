variable "newrelic_alert_policy" {
  type        = any
  description = "New Relic alert policy"
}

variable "create_opensearch_alerts" {
  type        = bool
  description = "Create alerts for OpenSearch"
  default     = true
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "opensearch_cluster_name" {
  type        = string
  description = "Name of the opensearch cluster"
  default     = null
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
