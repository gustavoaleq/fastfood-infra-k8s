resource "kubernetes_secret" "postgres_secret" {
  metadata {
    name      = "postgres-secret"
    namespace = var.namespace
  }

  type = "Opaque"

  data = {
    POSTGRES_DB       = "fastfood"                 # Remover base64encode
    POSTGRES_USER     = "fastfood_admin"           # Remover base64encode
    POSTGRES_PASSWORD = "fastfood123"              # Remover base64encode
    URL               = "jdbc:postgresql://fastfood-db.cdp5joxq3sjh.us-east-1.rds.amazonaws.com:5432/fastfood"  # Remover base64encode
  }
}
