# Define the project name
variable "project_name" {
  description = "The name of the project for which the AMI is being built."
  type        = string
}

# Define the project environment
variable "project_env" {
  description = "The environment of the project."
  type        = string
}

# Define the instance type
variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
}


# Define the SSH key pair name
variable "key_name" {
  description = "The name of the SSH key pair to use for connecting to the EC2 instance. Example: 'my-key-pair'."
  type        = string
}

# Define the domain name
variable "domain_name" {
  description = "The domain name associated with the project."
  type        = string
}

# Define the hostname
variable "hostname" {
  description = "The hostname to be assigned to the EC2 instance."
  type        = string
}

