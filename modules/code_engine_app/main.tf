# Stub for IBM Cloud Code Engine application (OCR/ingestion/index)
# Replace with real resources when provider creds are available:
#
# resource "ibm_code_engine_project" "this" { name = var.name }
# resource "ibm_code_engine_app" "this" {
#   project_id = ibm_code_engine_project.this.id
#   name       = var.name
#   image      = "icr.io/your-repo/ocr-indexer:latest"
#   env = { ES_ENDPOINT = var.es_endpoint }
#   # Inject secrets at deploy time (Vault)
# }

resource "null_resource" "app_stub" {
  triggers = {
    name        = var.name
    region      = var.region
    es_endpoint = var.es_endpoint
  }
}
