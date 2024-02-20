locals {
  landscape = yamldecode(file(var.landscape_file))
  table_index = yamldecode(file("${var.source_dir}/index.yaml"))
  project_prefix = local.landscape["settings"]["project_prefix"]
}

resource "google_bigquery_table" "my_table" {
  for_each = local.table_index

  project = "${local.project_prefix}${var.env_name}"
  dataset_id = each.value["dataset_id"]
  table_id = each.key
  schema = file("${var.source_dir}/schemas/${each.key}.json")
}
