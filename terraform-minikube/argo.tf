# terraform/argocd.tf
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Path to Minikube config or adjust as needed
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  chart      = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  namespace  = "argocd"

  create_namespace = true

  # Customize ArgoCD values if needed
  values = [
    <<EOF
    server:
      service:
        type: ClusterIP
    EOF
  ]
}
