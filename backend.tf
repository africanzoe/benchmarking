
terraform {
  backend "s3" {
    bucket = "security-topologies"
    key    = "76d67e03-86a4-49a5-800c-22d860f7df0f"
    region = "eu-west-3"
  }
}
  