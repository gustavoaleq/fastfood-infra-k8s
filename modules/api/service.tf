resource "kubernetes_service" "fastfood" {
  metadata {
    name = "svc-fastfood"
    labels = {
      app = "svc-fastfood"
    }
    namespace = var.namespace
  }

  spec {
    selector = {
      app = "fast-food"
    }

    port {
      port        = 80
      target_port = 8080
      protocol    = "TCP"
      node_port   = 30080
    }

    type = "LoadBalancer"
  }
}
