###############################################
# Root composition (stubs for interview plan)  #
###############################################

variable "es_ram_gb"  { type = number, default = 8 }
variable "es_disk_gb" { type = number, default = 100 }

# Runtime credentials typically come from Vault at deploy-time.
# Variables here illustrate the contract (do not hardcode secrets).
variable "es_username" { type = string, default = "vault:es/username" }
variable "es_password" { type = string, default = "vault:es/password" }

module "es" {
  source   = "./modules/ibm_elasticsearch"
  name     = "client-kb"
  region   = var.region
  ram_gb   = var.es_ram_gb
  disk_gb  = var.es_disk_gb
}

module "app" {
  source       = "./modules/code_engine_app"
  name         = "kb-indexer"
  region       = var.region
  es_endpoint  = module.es.endpoint
  es_username  = var.es_username
  es_password  = var.es_password
}

output "es_endpoint" { value = module.es.endpoint }
output "app_url"     { value = module.app.url }
