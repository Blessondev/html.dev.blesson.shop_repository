data "aws_route53_zone" "prod" {
  name         = var.domain_name
  private_zone = false
}




data "aws_ami" "latest_ami" {
    
  most_recent = true

  filter {
    name   = "name"
    values = ["${var.project_name}-${var.project_env}-*"]
  }

  filter {
    name   = "tag:Project"
    values = ["${var.project_name}"]
  }

  filter {
    name   = "tag:Env"
    values = ["${var.project_env}"]
  }

}
