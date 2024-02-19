module "gcp_module_dataset" {
  source = "../../modules/gcp-module-dataset"

  env_name = local.env_name
  landscape_file = var.landscape_file
  index_file = "../../../source/datasets/index.yaml"
}
