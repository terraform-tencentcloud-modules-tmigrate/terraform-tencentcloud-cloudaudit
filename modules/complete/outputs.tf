output "cloudaudit_id" {
  value       = join("", tencentcloud_audit_track.cloudaudit.*.id)
  description = "The ID of Cloud Audit Track."
}

output "bucket_id" {
  value       = join("", tencentcloud_cos_bucket.cos.*.id)
  description = "The ID of COS bucket."
}

output "bucket_policy_id" {
  value       = join("", tencentcloud_cos_bucket_policy.cos_policy.*.id)
  description = "The ID of COS bucket Policy."
}