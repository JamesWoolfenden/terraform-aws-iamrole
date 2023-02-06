variable "role" {
  type        = string
  description = "describe your role"
  default     = "pike"
}

variable "policy" {
  type = string
}

variable "assume" {
  type = string
}
