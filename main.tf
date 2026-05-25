provider "aws" {
    region = var.default_region
}

resource "aws_iam_role" "iam_role" {
    name = ""
    assume_role_policy = ""
}
