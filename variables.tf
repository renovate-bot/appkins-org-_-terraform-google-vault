variable "name" {
  description = "Application name."
  type        = string
  default     = "vault"
  nullable    = false
}

variable "custom_domain" {
  type        = string
  description = "Custom domain name to use for the vault server. Leave blank to use the default domain name."
  default     = ""
  nullable    = false
}

variable "location" {
  description = "Google location where resources are to be created."
  type        = string
  default     = "us-central1"
}

variable "project" {
  description = "Google project ID."
  type        = string
}

variable "vault_image" {
  description = "Vault docker image (i.e. hashicorp/vault."
  type        = string
  default     = "hashicorp/vault"
}

variable "vault_version" {
  description = "Vault version to use."
  type        = string
  default     = "1.7.2"
}

variable "bucket_force_destroy" {
  description = "CAUTION: Set force_destroy for Storage Bucket. This is where the vault data is stored. Setting this to true will allow terraform destroy to delete the bucket."
  type        = bool
  default     = false
}

variable "container_concurrency" {
  description = "Max number of connections per container instance."
  type        = number
  default     = 80 # Max per Cloud Run Documentation
}

variable "vpc_connector" {
  description = "Serverless VPC access connector."
  type        = string
  default     = ""
}

variable "vault_ui" {
  description = "Enable Vault UI."
  type        = bool
  default     = false
}

variable "vault_api_addr" {
  description = "Full HTTP endpoint of Vault Server if using a custom domain name. Leave blank otherwise."
  type        = string
  default     = ""
}

variable "vault_kms_keyring_name" {
  description = "Name of the Google KMS keyring to use."
  type        = string
  default     = ""
}

variable "vault_kms_key_rotation" {
  description = "The period for KMS key rotation."
  type        = string
  default     = "2592000s"
}

variable "vault_kms_key_algorithm" {
  description = "The cryptographic algorithm to be used with the KMS key."
  type        = string
  default     = "GOOGLE_SYMMETRIC_ENCRYPTION"
}

variable "vault_kms_key_protection_level" {
  description = "The protection level to be used with the KMS key."
  type        = string
  default     = "SOFTWARE"
}

variable "vault_service_account_id" {
  description = "ID for the service account to be used. This is the part of the service account email before the `@` symbol."
  type        = string
  default     = "vault-sa"
}

variable "vault_storage_bucket_name" {
  description = "Storage bucket name to be used."
  type        = string
  default     = ""
}

variable "plugin_directory" {
  description = "Path to the plugin directory. This is where the vault plugins are stored."
  type        = string
  default     = "/usr/local/libexec/vault"
}
