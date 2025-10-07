# output "cluster_endpoint" {
#   value       = module.eks.cluster_endpoint
# }

# output "cluster_security_group_id" {
#   value       = module.eks.cluster_security_group_id
# }

# output "kubeconfig_certificate_authority_data" {
#   value       = module.eks.cluster_certificate_authority_data
# }

# output "cluster_name" {
#   value       = module.eks.cluster_id
# }

output "namespace" {
  value = kubernetes_namespace.fastfood.metadata[0].name
}
