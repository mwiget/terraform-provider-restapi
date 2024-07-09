resource "restapi_object" "token" {
  path         = "/register/namespaces/system/tokens"
  data         = jsonencode({
    "metadata": {
      "name": var.f5xc_cluster_name,
      "namespace": "system"
    }
    "spec": {
      "type": "JWT",
      "site_name": var.f5xc_cluster_name
    }
  })
}
