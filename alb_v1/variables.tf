variable "env" {
  type    = string
  default = "dev"
}
variable "stage" {
  type = string
  default = "nonprod"
}
variable "region" {
  type = string
  default = "ue1"
}
variable "project" {
  type = string
  default = "cat"
}
variable "app_port" {
  type    = number
  default = 80
}
variable "subnets" {
  type    = list(string)
  default = ["subnet-0f6302358dce07af2", "subnet-071e2b23496679860", "subnet-06f092f146cbc46ab"]
}