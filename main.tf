data "oci_functions_functions" "functions_functions_lookup" {
  for_each = var.functions_functions_lookup

  application_id = each.value.application_id
  display_name   = each.value.display_name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

