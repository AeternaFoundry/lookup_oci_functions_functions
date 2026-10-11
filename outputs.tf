output "functions_functions_lookup_id" {
  description = "Map of id values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "functions_functions_lookup_application_id" {
  description = "Map of application_id values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no application_id are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "functions_functions_lookup_display_name" {
  description = "Map of display_name values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "functions_functions_lookup_filter" {
  description = "Map of filter values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "functions_functions_lookup_functions" {
  description = "Map of functions values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no functions are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.functions if v.functions != null && length(v.functions) > 0 }
}
output "functions_functions_lookup_state" {
  description = "Map of state values across all functions_functions_lookup, keyed the same as var.functions_functions_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_functions_functions.functions_functions_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

