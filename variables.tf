variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "fastfood-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
  default     = "fastfood-eks-nodes"
}

variable "desired_capacity" {
  description = "Number of nodes in the node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Max number of nodes in the node group"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Min number of nodes in the node group"
  type        = number
  default     = 1
}

variable "desired_size" {
  description = "Desired number of nodes in the node group"
  type        = number
  default     = 1
}


