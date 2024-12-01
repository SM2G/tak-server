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

variable "ami_id" {
  description = "Target AMI ID"
  default     = "ami-045a8ab02aadf4f88"
}

variable "instance_type" {
  description = "TAK server instance type"
  default     = "t2.xlarge"
}