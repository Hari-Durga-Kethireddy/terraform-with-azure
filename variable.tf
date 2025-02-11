variable "location" {
    default = "eastus"
    type = string
}
variable "net" {
    type = map(string)
    default = {
      "prod" = "91"
      "non-prod"= "90"
    }
}

variable "business_division" {
  description = "business division in organization for infra"
  type = string
  default = "SAP"
}

variable "environment" {
  default = "dev"
}

variable "organization" {
  type=map(string)
  default = {
    name="hdp"
    nam="dlr"
  } 
}

variable "azlocation_id" {
  type = map(string)
  default={
    eastus="ze"
  }
}
