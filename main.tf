
module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.11"
  gcp_project = "verdant-root-344117"
  cluster_name = "jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "gcloud-jx-state-files"
    prefix = "terraform/state"
  }
}

