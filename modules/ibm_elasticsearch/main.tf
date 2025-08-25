# Stub for IBM Cloud Databases for Elasticsearch (managed)
# Replace with real IBM Cloud resources once credentials are available:
#
# resource "ibm_resource_instance" "es" {
#   name     = var.name
#   service  = "databases-for-elasticsearch"
#   plan     = "standard"
#   region   = var.region
# }
#
# resource "ibm_resource_key" "es_creds" {
#   name                 = "${var.name}-creds"
#   role                 = "Manager"
#   resource_instance_id = ibm_resource_instance.es.id
# }

resource "null_resource" "es_stub" {
  triggers = {
    name    = var.name
    region  = var.region
    ram_gb  = tostring(var.ram_gb)
    disk_gb = tostring(var.disk_gb)
  }
}
