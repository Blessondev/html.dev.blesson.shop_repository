packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}


# Define the build source
source "amazon-ebs" "ubuntu" {
  source_ami      = var.ami
  instance_type   = var.instance_type
  ssh_username    = var.ssh_username
  ami_name        = "${local.image_name}"

  tags = {
    Name    = local.image_name
    Project = var.project_name
    Env     = var.project_env
  }


}

# Define the provisioners
build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "shell" {
   
    script =          "./setup.sh"
    execute_command = "sudo {{ .Path }} ${var.application_repository} ${var.project_env}"
  }
}
