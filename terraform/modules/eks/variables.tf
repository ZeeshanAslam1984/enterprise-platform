variable "project_name" {
  type = string
}

variable "cluster_version" {
  type    = string
  default = "1.30"
}

variable "subnet_ids" {
  type = list(string)
}
