locals {
  landscape = yamldecode(file(var.landscape_file))
  dataset_index = yamldecode(file(var.index_file))
  project_prefix = local.landscape["settings"]["project_prefix"]
}

resource "google_bigquery_dataset" "bigquery_dataset" {
  for_each = local.dataset_index

  project = "${local.project_prefix}${var.env_name}"
  dataset_id = each.key
  location   = each.value["region"]
}
