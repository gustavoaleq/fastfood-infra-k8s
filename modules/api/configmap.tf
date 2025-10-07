resource "kubernetes_config_map" "postgres_config" {
  metadata {
    name = "postgres-config"
    labels = {
      app = "postgres"
    }
    namespace = var.namespace
  }

  data = {
    POSTGRES_DB = "fastfood"
  }
}
