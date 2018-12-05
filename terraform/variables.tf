variable "project_id" {
    default         = ""
}

variable "region" {
    default         = "ap-southeast-1"
}

## Database variable
variable "db_name" {
    default         = "master"
}

variable "database_version" {
    default         = "MYSQL_5_7"
}

variable "tier" {
    default         = "db-f1-micro"
}

variable "activation_policy" {
    default         = "ALWAYS"
}

variable "disk_autoresize" {
    default         = false
}

variable "backup_configuration" {
    type            = "map"
    default         = {}
}

variable "location_preference" {
    type            = "list"
    default         = []
}

variable "maintenance_window" {
    type            = "list"
    default         = []
}

variable "disk_size" {
    default         = 10
}

variable "disk_type" {
    default         = "PD_SSD"
}

variable "pricing_plan" {
    default         = "PER_USE"
}

variable "replication_type" {
    default         = "SYNCHRONOUS"
}

variable "replica_configuration" {
    type            = "list"
    default         = []
}

variable "db_charset" {
    default         = ""
}

variable "db_collation" {
    default         = ""
}

variable "user_name" {
    default         = "default"
}

variable "user_host" {
    default         = "%"
}

variable "user_password" {
    default         = ""
}

## End of database variables

