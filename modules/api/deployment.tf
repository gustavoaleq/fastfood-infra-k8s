resource "kubernetes_deployment" "fastfood" {
  metadata {
    name = "fast-food"
    labels = {
      app = "fast-food"
    }
    namespace = var.namespace
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "fast-food"
      }
    }

    template {
      metadata {
        labels = {
          app = "fast-food"
        }
      }

      spec {
        container {
          name  = "fastfood"
          image = "gustavoaleq/fastfood:3"

          port {
            container_port = 8080
          }

          env {
            name = "SPRING_DATASOURCE_URL"
            value_from {
              secret_key_ref {
                name = "postgres-secret"
                key  = "URL"
              }
            }
          }

          env {
            name = "SPRING_DATASOURCE_USERNAME"
            value_from {
              secret_key_ref {
                name = "postgres-secret"
                key  = "POSTGRES_USER"
              }
            }
          }

          env {
            name = "SPRING_DATASOURCE_PASSWORD"
            value_from {
              secret_key_ref {
                name = "postgres-secret"
                key  = "POSTGRES_PASSWORD"
              }
            }
          }

          resources {
            requests = {
              cpu    = "100m"
              memory = "256Mi"
            }

            limits = {
              cpu    = "300m"
              memory = "512Mi"
            }
          }
        }
      }
    }
  }
}
