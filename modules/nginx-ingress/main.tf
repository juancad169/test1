resource "kubernetes_namespace" "nginx-ingress" {
  metadata {
    name = "nginx-ingress"
  }
}

resource "helm_release" "nginx_ingress" {
  name = "nginx-ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart = "ingress-nginx"
  set {
    name = "controller.publishService.enabled"
    value = "true"
  }
  set {
    name = "controller.service.externalTrafficPolicy"
    value = "Local"
  }
}