output "vpc_security_group_rules_exclusives_egress_rule_ids" {
  description = "Map of egress_rule_ids values across all vpc_security_group_rules_exclusives, keyed the same as var.vpc_security_group_rules_exclusives"
  value       = { for k, v in aws_vpc_security_group_rules_exclusive.vpc_security_group_rules_exclusives : k => v.egress_rule_ids if v.egress_rule_ids != null && length(v.egress_rule_ids) > 0 }
}
output "vpc_security_group_rules_exclusives_ingress_rule_ids" {
  description = "Map of ingress_rule_ids values across all vpc_security_group_rules_exclusives, keyed the same as var.vpc_security_group_rules_exclusives"
  value       = { for k, v in aws_vpc_security_group_rules_exclusive.vpc_security_group_rules_exclusives : k => v.ingress_rule_ids if v.ingress_rule_ids != null && length(v.ingress_rule_ids) > 0 }
}
output "vpc_security_group_rules_exclusives_region" {
  description = "Map of region values across all vpc_security_group_rules_exclusives, keyed the same as var.vpc_security_group_rules_exclusives"
  value       = { for k, v in aws_vpc_security_group_rules_exclusive.vpc_security_group_rules_exclusives : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_security_group_rules_exclusives_security_group_id" {
  description = "Map of security_group_id values across all vpc_security_group_rules_exclusives, keyed the same as var.vpc_security_group_rules_exclusives"
  value       = { for k, v in aws_vpc_security_group_rules_exclusive.vpc_security_group_rules_exclusives : k => v.security_group_id if v.security_group_id != null && length(v.security_group_id) > 0 }
}

