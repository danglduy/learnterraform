provider "linode" {
  token = var.token
}

resource "linode_instance" "terraform-web" {
  image = "linode/debian10"
  label = "bastion"
  group = "Terraform"
  region = "ap-south"
  type = "g6-nanode-1"
  authorized_keys = [var.authorized_keys]
  root_pass = var.root_pass
}
