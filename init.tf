terraform {
  required_providers {
    mikrotik = {
      source = "ddelnano/mikrotik"
      version = "0.6.2"
    }
  }
}

# Configure the mikrotik Provider
provider "mikrotik" {
  # set MIKROTIK_HOST environment variable
  # set MIKROTIK_USER environment variable
  # set MIKROTIK_PASSWORD environment variable
}
