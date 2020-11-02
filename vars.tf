variable "tags" {
  description = "A map of tags to assign to the resource share."
  type        = map(string)
  default     = {}
}

#####################
# ram_resource_share
#####################
variable "resource_share_name" {
  description = "The name of the resource share."
  type        = string
  default     = ""
}

variable "allow_external_principals" {
  description = "Indicates whether principals outside your organization can be associated with a resource share."
  type        = bool
  default     = false
}

############################
# ram_principal_association
############################

variable "principals" {
  type        = list(string)
  description = "Principal list to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN."
  default     = []
}

############################
# ram_resource_association
############################

variable "associated_resources" {
  type        = list(string)
  description = "Resource list to associate with the resource share"
  default     = []
}
