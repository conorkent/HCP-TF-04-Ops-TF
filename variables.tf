variable "project_name" {
    description = "Name of the project"
    type        = string
    default     = "my-terraform-project"
}

variable "environment" {
    description = "Environment name"
    type        = string
    default     = "development"
}

variable "pet_length" {
    description = "Length of the random pet name"
    type        = number
    default     = 2
}

variable "separator" {
    description = "Separator for the pet name"
    type        = string
    default     = "-"
}
