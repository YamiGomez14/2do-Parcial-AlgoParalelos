terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_c89ce767a274ec00529ef2f15211a33b63e5893dbb68b4ef956e9251311b80e4"
}

data "digitalocean_ssh_key" "terraform"{
  name="SSHTarea"
}

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-18-04-x64"
  name   = "Terraform"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
  connection {
    type        = "ssh"
    user        = "root"
    private_key = file("~/.ssh/id_rsa")
    timeout     = "2m"
    host     = self.ipv4_address
  }
}