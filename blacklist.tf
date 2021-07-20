locals {
  blacklist = [for domain in jsondecode(data.http.blacklist.body).data: domain.dns]
}

data "http" "blacklist" {
  url = "https://blacklist.salamek.cz/api/blacklist"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

resource "mikrotik_dns_record" "record" {
  for_each = toset(local.blacklist)
  name = each.value
  address = "127.0.0.1"
  ttl = 300
}
