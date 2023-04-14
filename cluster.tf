
module "kubernetes" {
  source = "./modules/kubernetes"
}

module "nginx-ingress" {
  source = "./modules/nginx-ingress"
}

module "prometheus" {
  source = "./modules/prometheus"
}

module "grafana" {
  source = "./modules/grafana"
}
