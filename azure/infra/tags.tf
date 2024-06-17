variable "mandatory_tags" {
type = map(string)
}

variable "env" {
type = string
}

locals {
 final_tags = merge(var.mandatory_tags, {"env" =var.env})
}

