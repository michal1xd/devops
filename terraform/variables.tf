variable "project_id" {
  description = "Project ID in Google Cloud Platform"
  type = string
  default = "seraphic-hawk-505119-h3"
}

variable "region" {
  description = "Main resources region"
  type = string
  default = "europe-central2"
}

variable "zone" {
  description = "Main zone inside the region"
  type = string
  default = "europe-central2-a"
}
