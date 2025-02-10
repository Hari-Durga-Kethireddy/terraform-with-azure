variable "region" {
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