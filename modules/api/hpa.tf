resource "kubernetes_horizontal_pod_autoscaler_v2" "fastfood" {
  metadata {
    name = "hpa-fastfood"
    namespace = var.namespace
  }

  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = kubernetes_deployment.fastfood.metadata[0].name
    }

    min_replicas = 1
    max_replicas = 5

    metric {
      type = "Resource"
      resource {
        name = "cpu"
        target {
          type               = "Utilization"
          average_utilization = 80
        }
      }
    }
  }
}
