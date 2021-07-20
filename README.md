# Hovnolist

How to make user life miseable 

## Description

We are using Terraform, Mikrotik provider and blacklist.salamek.cz to inject data into the local Mikrotik DNS records

## How to use

1. Checkout
1. Run `terraform init`
1. Create script to define `MIKROTIK_HOST/MIKROTIK_USER/MIKROTIK_PASSWORD` in it according to your device and add `terraform apply -auto-approve` to the end of it.

Enjoy, you just did built a censorship according to CZ laws.
