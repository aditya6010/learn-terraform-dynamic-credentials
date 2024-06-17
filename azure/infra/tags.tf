variable "tags_ws" {
type = map(string)
}

variable "env" {
type = string
}

locals {
 final_tags = merge(var.tags_ws, {"env" =var.env})
}

