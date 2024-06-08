resource "terraform_data" "object" {
  for_each = merge({ "": var.config }, var.config.subenvs)

  input = {
    name    = local.generate_name(each.key)
    type    = each.value.type
    size    = each.value.size
    name    = each.value.name
    db_type = each.value.db_type
    count   = each.value.count
  }
}

locals {
  generate_name = function(env, subenv = "", parent_obj = "", type, unique_name, count = 1) {
    parts = [env, subenv, parent_obj, type, unique_name]
    name = join("-", compact(parts))
    if (count > 1) {
      name = "${name}-${format("%02d", count)}"
    }
    return name
  }
}

