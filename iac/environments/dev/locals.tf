locals {
  env_name = last(split("/", replace(path.cwd, "\\", "/")))
}