variable "create_track" {
  type        = bool
  default     = true
  description = "Controls if cloud audit track should be created."
}

variable "create_bucket" {
  type        = bool
  default     = false
  description = "Controls if COS bucket should be created."
}

variable "create_bucket_policy" {
  type        = bool
  default     = false
  description = "Controls if COS bucket policy should be created."
}

###############
# Cloud Audit
###############

variable "track_name" {
  type        = string
  default     = ""
  description = "The name of cloud audit track."
}

variable "action_type" {
  type        = string
  default     = "*"
  description = "Track interface type, optional: (Read: Read interface, Write: Write interface, *: All interface),  Default is *."
}

variable "resource_type" {
  type        = string
  default     = "*"
  description = "Track product, optional: (*: All product, Single product, such as cos), Default is *."
}

variable "event_names" {
  type        = list(string)
  default     = ["*"]
  description = "Track interface name list. When resource_type is *, event_names is must *; When resource_type is a single product, event_names support all interfaces(*) and some interfaces, up to 10."
}

variable "status" {
  type        = number
  default     = 1
  description = "Track status, optional: (close: 0, open: 1)."
}

variable "bucket_name" {
  type        = string
  default     = ""
  description = "The name of the bucket."
}

variable "appid" {
  type        = string
  default     = ""
  description = "Your appid."
}

variable "storage_prefix" {
  type        = string
  default     = ""
  description = "Storage path prefix."
}

variable "region" {
  type        = string
  default     = "ap-singapore"
  description = "The region of storage."
}

variable "storage_type" {
  type        = string
  default     = "cos"
  description = "Track Storage type, optional: cos or cls."
}

variable "storage_account_id" {
  type        = string
  default     = ""
  description = "Owner UIN of the storage account. Required for cross-account COS delivery. Defaults to current account owner UIN."
}

variable "storage_app_id" {
  type        = string
  default     = ""
  description = "App ID of the storage account. Required for cross-account COS delivery. Defaults to current account app ID."
}

variable "track_for_all_members" {
  type        = number
  default     = 0
  description = "Whether to enable the delivery of group member operation logs to the group management account or trusted service management account, optional: (close: 0, open: 1)."
}

###############
# COS Bucket
###############

variable "bucket_acl" {
  description = "Access control list for the bucket."
  type        = string
  default     = "private"
}

variable "acl_body" {
  description = "The XML format of Access control list for the bucket."
  type        = string
  default     = null
}

variable "encryption_algorithm" {
  description = "The server-side encryption algorithm to the bucket."
  type        = string
  default     = "AES256"
}

variable "force_clean" {
  description = "Whether to force cleanup all objects before delete bucket."
  type        = bool
  default     = false
}

variable "versioning_enable" {
  description = "Enable bucket versioning."
  type        = bool
  default     = false
}

variable "lifecycle_rules" {
  description = "Lifecycle rules to the bucket."
  default     = []
}

variable "log_enable" {
  description = "Indicate the access log of this bucket to be saved or not."
  type        = bool
  default     = false
}

variable "log_prefix" {
  description = "The prefix log name which saves the access log of this bucket per 5 minutes. Eg. MyLogPrefix/. The log access file format is log_target_bucket/log_prefix{YYYY}/{MM}/{DD}/{time}{random}{index}.gz. Only valid when log_enable is true."
  type        = string
  default     = ""
}

variable "log_target_bucket" {
  description = "The target bucket name which saves the access log of this bucket per 5 minutes. The log access file format is log_target_bucket/log_prefix{YYYY}/{MM}/{DD}/{time}{random}{index}.gz. Only valid when log_enable is true. User must have full access on this bucket."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

###############
# Bucket policy
###############

variable "policy" {
  description = "The text of the policy."
  type        = string
  default     = ""
}
