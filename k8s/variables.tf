variable "k8s_project" {
  type        = string
  description = "The Project of the GKE instance"
}
variable "k8s_vpc_name" {
  type        = string
  description = "The Name of the VPC for this GKE instance"
}

variable "k8s_region" {
  default     = "us-central1"
  description = "The Region of the GKE instance"
}

variable "k8s_tier" {
  default     = "e2-f1-micro"
  description = "The instance tiers are based on the machine"
}
variable "k8s_tier_node_count" {
  default     = 2
  description = "The nodes in this pool"
}

variable "k8s_spot_tier" {
  default     = "e2-f1-micro"
  description = "The instance tiers are based on the machine"
}

variable "k8s_subnet_name" {
  type        = string
  description = "The Name of the VPC SUBNET for this GKE instance"
}

variable "k8s_subnet_cidr" {
  type        = string
  description = "The CIDR of the VPC SUBNET for this GKE instance"
}

variable "k8s_pod_cidr" {
  type        = string
  description = "The CIDR of the POD for this GKE instance"
}

variable "k8s_pod_cidr_name" {
  type        = string
  description = "The CIDR Name of the POD for this GKE instance"
}

variable "k8s_svc_cidr" {
  type        = string
  description = "The CIDR of the SVC for this GKE instance"
}

variable "k8s_svc_cidr_name" {
  type        = string
  description = "The CIDR Name of the SVC for this GKE instance"
}

variable "k8s_network_tier" {
  type        = string
  default     = "PREMIUM"
  description = "The network Tier for GKE instance"
}

variable "k8s_address_type" {
  type        = string
  default     = "EXTERNAL"
  description = "The address type for GKE instance"
}

variable "k8s_firewall_ports_allow" {
  type        = list(string)
  default     = ["22"]
  description = "The ports opened by GKE instance"
}

variable "k8s_firewall_source_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "The Source IP to allow GKE instance"
}

variable "k8s_cluster_name" {
  type        = string
  description = "The name of the GKE instance"
}

variable "k8s_cluster_location" {
  type        = string
  description = "The Region or zone of the GKE instance"
}

variable "k8s_cluster_logging_service" {
  type        = string
  default     = "none"
  description = "The Logging service for the GKE instance"
}

variable "k8s_cluster_monitoring_service" {
  type        = string
  default     = "none"
  description = "The Logging service for the GKE instance"
}

variable "k8s_additional_node_zones" {
  type        = list(string)
  default     = [""]
  description = "The Additional zones GKE instance"
}

variable "k8s_master_ipv4_cidr_block" {
  type        = string
  description = "The cidr BLOCK for master GKE instance"
}

variable "k8s_service_account_name" {
  type        = string
  description = "The Service Account name GKE instance"
}
