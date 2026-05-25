variable "default_region" {
    description = "default aws region"
    type = string
    default = "ap-south-1"
}

variable "tags" {
    description = "tags"
    type = map(string)
    default = {
        "env" = "local_host"
        "cloud" = "aws"
    }
}
