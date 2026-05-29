provider "aws" {
    region = var.default_region
}

locals {
    csv_file = csvdecode(file("${path.module}/users.csv"))
}

resource "aws_iam_user" "user_table" {
    for_each = {for user in local.csv_file : user.Employee_ID => user}
    name = replace(each.value.Name, " ", "")
}