variable "domain" {
    description = "Domain used for the Route53 Hosted Zone"
}

variable "subdomain" {
    description = "The subdomain that you want to add as a new record"
}

variable "type" {
    description = "Type of the record (e.g. A, MX, CNAME..)"
    default = "A"
}

variable "ttl" {
    description = "Time to live of the record"
    default = 3600
}

variable "records" {
    description = "The list of records to be associated with the subdomain"
    type = "list"
}
