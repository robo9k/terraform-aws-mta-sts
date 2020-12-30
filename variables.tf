variable "domain_name" {
  description = "Name of the Route53 hosted zone."
  type        = string
}

variable "mode" {
  description = "One of `enforce`, `testing`, or `none`, indicating the expected behavior of a Sending MTA in the case of a policy validation failure."
  type        = string
  validation {
    condition     = contains(["testing", "enforce", "none"], var.mode)
    error_message = "Must be one of `testing`, `enforce` or `none`."
  }
}

variable "mx" {
  description = "Allowed MX patterns. One or more patterns matching allowed MX hosts for the Policy Domain."
  type        = list(string)

  validation {
    condition     = length(var.mx) != 0
    error_message = "Must contain at least one MX pattern."
  }
}

variable "max_age" {
  description = "Max lifetime of the policy (plaintext non-negative integer seconds, maximum value of 31557600)."
  type        = number

  validation {
    condition     = var.max_age >= 0
    error_message = "Must be greater than or equal to 0."
  }

  validation {
    condition     = var.max_age <= 31557600
    error_message = "Must be less than or equal to 31557600."
  }
}

variable "rua" {
  description = "A URI specifying the endpoint to which aggregate information about policy validation results should be sent."
  type        = list(string)

  # TODO: `tlsrpt-uri` might need encoding

  validation {
    condition     = length(var.rua) != 0
    error_message = "Must contain at least one URI."
  }

  validation {
    condition     = can([for v in var.rua : regex("^(mailto|https):", v)])
    error_message = "Must be a URI with 'mailto' or 'https' scheme."
  }
}