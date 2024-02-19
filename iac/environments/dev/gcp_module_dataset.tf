module "gcp_module_dataset" {
  source = "../../modules/gcp-module-dataset"

  env_name = ""
  index_file = "../../../source/datasets/index.yaml"
}
