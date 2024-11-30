variable "project_name" {
  type = object({
    shortname = string
    longname  = string
  })
  default = {
    shortname = "tak",
    longname  = "takserver"
  }
}