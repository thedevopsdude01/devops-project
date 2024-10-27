terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.4.2"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.30.0"  # Sets a specific Kubernetes version for consistency
}

resource "minikube_cluster" "minikube_docker" {
  driver       = "docker"
  cluster_name = "devops-python-app"
  addons = [
    "default-storageclass",
    "storage-provisioner",
    "ingress"
  ]
}

