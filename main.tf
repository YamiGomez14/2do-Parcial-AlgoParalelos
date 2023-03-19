
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_aea45bb62cac520b8367d31bca88458906ee11635f908b3eda0d03870bf4f623"
}

data "digitalocean_ssh_key" "terraform"{
  name="SSHTarea"
}

resource "digitalocean_droplet" "Jenkins" {
  image  = "ubuntu-18-04-x64"
  name   = "Jenkins"
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