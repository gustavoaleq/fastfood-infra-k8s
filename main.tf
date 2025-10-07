# Criação do namespace
resource "kubernetes_namespace" "fastfood" {
  metadata {
    name = "fastfood"
  }
}

module "api" {
  source    = "./modules/api"
  namespace = kubernetes_namespace.fastfood.metadata[0].name
}
