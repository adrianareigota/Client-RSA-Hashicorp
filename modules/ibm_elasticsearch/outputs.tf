# In a real module, expose endpoint/creds from ibm_resource_key.
# Stub returns a synthetic endpoint to keep contracts intact.
output "endpoint" { value = "https://es-${var.name}.${var.region}.example.com" }
