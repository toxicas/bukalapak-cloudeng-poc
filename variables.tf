variable "name" { }

variable "project_id" {
    default         = ""
}

variable "region" {
    default         = "asia-southeast1"
}

variable "zones" {
    default         = [
        "asia-southeast1-a",
        "asia-southeast1-b",
        "asia-southeast1-c"
    ]
}

variable "environment" {
    default         = "development"
}

variable "ssh_key" { }
variable "user" { }

## GCP Engine variables
variable "network_name" {
    default         = "default"
}

## Instance template variable
variable "instance_type" {
    default         = "n1-standard-1"
}

variable "image" {
    default         = ""
}

variable "count" { default = 3 }