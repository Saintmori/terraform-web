variable "env" {
  type    = string
  default = "dev"
}
variable "stage" {
  type    = string
  default = "nonprod"
}
variable "region" {
  type    = string
  default = "ue1"
}
variable "project" {
  type    = string
  default = "cat"
}
variable "app_port" {
  type    = number
  default = 80
}