variable "region" {
  description = "Region for the AWS resources."
  type = string
}

variable "project" {
  description = "The project name to identify project resources."
  type = string
}

variable "env" {
  description = "The current working environment e.g. dev/staging/prod."
  type = string
}
