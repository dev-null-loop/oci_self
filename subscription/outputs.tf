output "additional_details" {
  description = "Additional details that are specific for this subscription such as activation details."
  value       = oci_self_subscription.this.additional_details
}

output "compartment_id" {
  description = "The unique identifier for the compartment where the subscription was purchased."
  value       = oci_self_subscription.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_self_subscription.this.defined_tags
}

output "display_name" {
  description = "The subscription name. Must be unique within the compartment. This value can be updated."
  value       = oci_self_subscription.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_self_subscription.this.freeform_tags
}

output "id" {
  description = "The unique identifier for the subscription within a specific compartment."
  value       = oci_self_subscription.this.id
}

output "lifecycle_details" {
  description = "A message that describes the current state of the Subscription in more detail. For example, can be used to provide actionable information for a resource in the Failed state."
  value       = oci_self_subscription.this.lifecycle_details
}

output "product_id" {
  description = "The unique OCID of the product, effectively functioning as the listing ID."
  value       = oci_self_subscription.this.product_id
}

output "realm" {
  description = "The realm from where customer is buying the subscription."
  value       = oci_self_subscription.this.realm
}

output "region" {
  description = "The region from where customer is buying the subscription."
  value       = oci_self_subscription.this.region
}

output "seller_id" {
  description = "The OCID that identifies the seller within the platform."
  value       = oci_self_subscription.this.seller_id
}

output "source_type" {
  description = "The type of seller in SELF Service."
  value       = oci_self_subscription.this.source_type
}

output "state" {
  description = "The current lifecycle state of the Subscription."
  value       = oci_self_subscription.this.state
}

output "subscription_details" {
  description = "The details of a subscription"
  value       = oci_self_subscription.this.subscription_details
}

output "system_tags" {
  description = "System tags for this resource. Each key is predefined and scoped to a namespace.  Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_self_subscription.this.system_tags
}

output "tenant_id" {
  description = "The unique identifier for the tenant where the subscription was purchased."
  value       = oci_self_subscription.this.tenant_id
}

output "time_created" {
  description = "The date and time the Subscription was created, in the format defined by RFC 3339."
  value       = oci_self_subscription.this.time_created
}

output "time_ended" {
  description = "The date and time the Subscription was ended, in the format defined by RFC 3339."
  value       = oci_self_subscription.this.time_ended
}

output "time_started" {
  description = "The date and time the Subscription was started, in the format defined by RFC 3339."
  value       = oci_self_subscription.this.time_started
}

output "time_updated" {
  description = "The date and time the Subscription was updated, in the format defined by RFC 3339."
  value       = oci_self_subscription.this.time_updated
}
