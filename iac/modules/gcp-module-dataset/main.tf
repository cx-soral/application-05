locals {
  landscape = yamldecode(file(var.landscape_file))
  dataset_index = yamldecode(file(var.index_file))
}

resource "google_bigquery_dataset" "bigquery_dataset" {
  for_each = local.dataset_index

  project =
  dataset_id = each.key
  location   = each.value["region"]
}
