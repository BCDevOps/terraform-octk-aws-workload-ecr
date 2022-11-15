variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "ca-central-1"
}

variable "repository_names" {
  description = "Name for the container repository to be provisioned."
  type        = list(string)
}

variable "image_tag_mutability" {
  description = "Tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE."
  default     = "MUTABLE"
}

variable "image_scanning_enabled" {
  description = "Enable container image scanning for security issues."
  type        = bool
  default     = true
}

variable "read_principals" {
  description = "Defines which external principals are allowed to read from the ECR repository"
  type        = list(any)
}

variable "write_principals" {
  description = "Defines which external principals are allowed to write to the ECR repository"
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "A set of of one or more tags to provide some metadata for the provisioned resources."
  type        = map(string)
  default     = {}
}