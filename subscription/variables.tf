variable "additional_details" {
  description = "Additional details that are specific for this subscription such as activation details."
  type = list(object({
    key   = string
    value = string
  }))
  default = []
}

variable "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to create the subscription in."
  type        = string
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "The subscription name. Must be unique within the compartment. This value can be updated."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "product_id" {
  description = "The unique identifier of the marketplace listing in Oracle Cloud Infrastructure."
  type        = string
}

variable "realm" {
  description = "The realm from where customer is buying the subscription."
  type        = string
  default     = null
}

variable "region" {
  description = "The region from where customer is buying the subscription."
  type        = string
  default     = null
}

variable "seller_id" {
  description = "The OCID for the seller in SELF Service."
  type        = string
}

variable "source_type" {
  description = "The type of seller in SELF Service."
  type        = string
  default     = null
}

variable "subscription_details" {
  description = "The details of a subscription"
  type = object({
    amount                   = optional(number)
    currency                 = optional(string)
    is_auto_renew            = optional(bool)
    partner_registration_url = string
    billing_details = object({
      has_gov_sku     = optional(bool)
      metric_type     = string
      rate_allocation = number
      sku             = string
      meters = list(object({
        name            = string
        rate_allocation = number
        extended_metadata = optional(list(object({
          key   = string
          value = string
        })), [])
      }))
    })
    pricing_plan = object({
      billing_frequency = string
      plan_description  = optional(string)
      plan_duration     = optional(string)
      plan_name         = string
      plan_type         = string
      rates = list(object({
        currency = string
        rate     = number
      }))
    })
  })
}

variable "tenant_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the tenant to create the subscription in."
  type        = string
}
