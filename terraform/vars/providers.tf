terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.5"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 1.2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.22"
    }
    kustomization = {
      source  = "kbst/kustomization"
      version = "0.8.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = "1.34.0"
    }
    nexus = {
      source  = "datadrivers/nexus"
      version = "1.21.2"
    }
  }
  backend "s3" {
    acl     = "bucket-owner-full-control"
    encrypt = true
  }
}

/*

terraform {
  required_version = ">= 1.3.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.54.0"
    }
    helm     = "~> 2.5"
    local    = "2.3.0"
    random   = "3.4.3"
    external = "2.2.3"
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.11.0"
    }
    kustomization = {
      source  = "kbst/kustomization"
      version = "0.9.2"
    }
  }
  backend "s3" {
    acl     = "bucket-owner-full-control"
    encrypt = true
  }
}

*/