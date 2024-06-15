# Define the application repository
variable "application_repository" {
  description = "The URL of the application repository to be cloned and built."
  type        = string
  default     = ""
}


# Define the project name
variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = ""
}

# Define the project environment
variable "project_env" {
  description = "The environment of the project (e.g., dev, staging, prod)."
  type        = string
  default     = ""
}


# Define the ec2 user name
variable "ssh_username" {
  description = "The name of the user."
  type        = string
  default     = ""
}

# Define the source AMI ID
variable "ami" {
  description = "The ID of the source AMI to use for creating the new image."
  type        = string
  default     = ""
}

# Define the instance type
variable "instance_type" {
  description = "The type of instance, default type is t2.micro"
  type        = string  
  default     = ""
} 


locals {
  current_timestamp = formatdate("YYYY-MM-DD-hh-mm", timestamp())
  image_name        = "${var.project_name}-${var.project_env}-${local.current_timestamp}"
}