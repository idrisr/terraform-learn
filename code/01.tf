# Define a Terraform module that accepts a region name as input. It should then output both:
# The region name in all uppercase.
# The number of characters in the region string.

variable "region" {
  type = string
}

output "upper" {
  value = upper(var.region)
}

output "length" {
  value = length(var.region)
}
