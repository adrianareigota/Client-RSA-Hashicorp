# Providers will be configured when real resources are enabled.
# For interview/demo, modules use null_resource stubs, so no cloud creds are required.

variable "region" {
  description = "Cloud region (e.g., br-sao, us-south, eu-de)"
  type        = string
  default     = "br-sao"
}

# Uncomment when using IBM Cloud provider for real provisioning
# variable "ibmcloud_api_key" {
#   type        = string
#   description = "IBM Cloud API key"
#   sensitive   = true
# }
#
# provider "ibm" {
#   ibmcloud_api_key = var.ibmcloud_api_key
#   region           = var.region
# }
