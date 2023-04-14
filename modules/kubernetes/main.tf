terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name = var.cluster_name
  region = var.region
  version = var.k8s_version
  node_pool {
    name = "test"
    size = var.droplet_size
    node_count = var.node_count
  }
}

output "kubeconfig" {
  value = "~/.kube/config"
}