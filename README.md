Terraform module for Route53 records
====================================

This is a terraform module that can be used to control your records on Route53.

The goal of this module is to simplify the use of the resource to handle the
Route53 records, so for basic records this module is more than enough.

This module also makes the assumption that the Hosted zone for the record is
already available in your AWS account.

Input variables
---------------

- `domain` - The domain registered in your Route53 zone
- `subdomain` - The new subdomain that you want to add as a Route53 record
- `type` - The type of the record you want to create (e.g. A, MX, CNAME..)
- `ttl` - The time to live of the record
- `records` - A list of the records you want to add for the subdomain

Usage
-----

This is a short example on how you can use the module in a simple template file,
e.g. `main.tf`.

```
module "gsuite" {
    source = "github.com/fallertsen/terraform-module-aws-route53-record"

    domain = "example.com"
    subdomain = "www"
    records = [ "127.0.0.1" ]
}
```

This would create a new record on Route53 under the Hosted Zone for the domain
`example.com`.
It would make the DNS reply `127.0.0.1` for the domain `www.example.com`.
