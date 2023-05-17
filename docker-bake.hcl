variable "DOCKER_REGISTRY" {
  default = "docker.uncharted.software"
}
variable "DOCKER_ORG" {
  default = "worldmodeler"
}
variable "VERSION" {
  default = "local"
}

# ---------------------------------
function "tag" {
  params = [image_name, prefix, suffix]
  result = [ "${DOCKER_REGISTRY}/${DOCKER_ORG}/${image_name}:${check_prefix(prefix)}${VERSION}${check_suffix(suffix)}" ]
}

function "check_prefix" {
  params = [tag]
  result = notequal("",tag) ? "${tag}-": ""
}

function "check_suffix" {
  params = [tag]
  result = notequal("",tag) ? "-${tag}": ""
}

# ---------------------------------
group "prod" {
  targets = ["wm-docs"]
}

group "default" {
  targets = ["wm-docs-base"]
}

group "ci" {
  targets = ["wm-docs-ci"]
}

# ---------------------------------
target "_platforms" {
  platforms = ["linux/amd64", "linux/arm64"]
}

target "wm-docs-base" {
	context = "."
	tags = tag("wm-docs", "", "")
	dockerfile = "./Dockerfile"
}

target "wm-docs" {
  inherits = ["_platforms", "wm-docs-base"]
}

target "wm-docs-ci" {
	context = "."
	tags = tag("wm-docs-ci", "", "")
	dockerfile = "./ci/Dockerfile"
}