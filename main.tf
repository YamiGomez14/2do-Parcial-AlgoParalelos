terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_a28892aadded52b2055e076d73ace37fb2753b587379c151052156b651b0646b"
}

data "digitalocean_ssh_key" "instancianueva"{
  name="SSHTarea"
}

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-18-04-x64"
  name   = "InstanciaNuevadeJenkinsaTerraform"
  region = "nyc1"
  size   = "s-1vcpu-1gb"

  ssh_keys = [
    data.digitalocean_ssh_key.instancianueva.id
  ]
  connection {
    type        = "ssh"
    user        = "root"
    private_key = file("~/.ssh/id_rsa")
    timeout     = "2m"
    host     = self.ipv4_address
  }
}