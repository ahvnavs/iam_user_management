terraform {
  backend "s3" {
    bucket       = "statefile-host-bucket"
    key          = "iam_user_manage/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
