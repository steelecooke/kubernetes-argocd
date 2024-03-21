variable "name" {
  description = "The project name combined with the current wokring environment to create unique and easily identifiable project resources."
  type = string
}

variable "project" {
  description = "The project name to identify project resources."
  type = string
}

variable "password_length" {
  description = "The length of the generated password"
  type        = number
  default     = 16
}

variable "include_special" {
  description = "Include special characters in the generated password"
  type        = bool
  default     = true
}

variable "override_special_characters" {
  description = "Characters to use for replacing the special characters in the password"
  type        = string
  default     = "!@#$%&*()-_=+[]{}<>:?"
}
