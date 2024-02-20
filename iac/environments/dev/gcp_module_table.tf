module "gcp_module_table" {
  source = "../../modules/gcp-module-table"

  env_name = local.env_name
  landscape_file = var.landscape_file
  source_dir = "../../../source/tables"
}
