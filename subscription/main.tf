resource "oci_self_subscription" "this" {
  compartment_id = var.compartment_id
  product_id     = var.product_id
  seller_id      = var.seller_id
  tenant_id      = var.tenant_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  realm          = var.realm
  region         = var.region
  source_type    = var.source_type
  dynamic "additional_details" {
    for_each = var.additional_details
    iterator = ad
    content {
      key   = ad.value.key
      value = ad.value.value
    }
  }
  subscription_details {
    amount                   = var.subscription_details.amount
    currency                 = var.subscription_details.currency
    is_auto_renew            = var.subscription_details.is_auto_renew
    partner_registration_url = var.subscription_details.partner_registration_url
    billing_details {
      metric_type     = var.subscription_details.billing_details.metric_type
      rate_allocation = var.subscription_details.billing_details.rate_allocation
      sku             = var.subscription_details.billing_details.sku
      has_gov_sku     = var.subscription_details.billing_details.has_gov_sku
      dynamic "meters" {
        for_each = var.subscription_details.billing_details.meters
        iterator = me
        content {
          name            = me.value.name
          rate_allocation = me.value.rate_allocation
          dynamic "extended_metadata" {
            for_each = me.value.extended_metadata
            iterator = em
            content {
              key   = em.value.key
              value = em.value.value
            }
          }
        }
      }
    }
    pricing_plan {
      billing_frequency = var.subscription_details.pricing_plan.billing_frequency
      plan_name         = var.subscription_details.pricing_plan.plan_name
      plan_type         = var.subscription_details.pricing_plan.plan_type
      plan_description  = var.subscription_details.pricing_plan.plan_description
      plan_duration     = var.subscription_details.pricing_plan.plan_duration
      dynamic "rates" {
        for_each = var.subscription_details.pricing_plan.rates
        iterator = ra
        content {
          currency = ra.value.currency
          rate     = ra.value.rate
        }
      }
    }
  }
}
