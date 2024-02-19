locals {
  env_name = element(split("/", replace(path.cwd, "\\", "/")), length(split("/", replace(path.cwd, "\\", "/"))) - 1)
}