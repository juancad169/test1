resource "helm_release" "grafana" {
  chart      = "grafana"
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  namespace  = var.namespace
  version    = "6.24.1"
  set {
    name = "adminPassword"
    value = "zzz"
  }
}
