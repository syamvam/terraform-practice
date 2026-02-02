variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(any) #optional
  default = {
    Name        = "terraform"
    Project     = "expense"
    Component   = "backend"
    Environment = "dev"
    Terraform   = true
  }
}

variable "ami_id" {
  description = "this is the ami id of devops-practice"
  default     = "ami-0220d79f3f480ecf5"
}

variable "sg_name" {
  default = "allow_ssh"

}

variable "from_port" {
  default = 22
  type    = number
}
variable "to_port" {
  default = 22
  type    = number
}
variable "protocol" {
  default = "tcp"
  type    = string
}
variable "ingress_cidr" {

  type    = list(string)
  default = ["0.0.0.0/0"]
}


variable "zone_id" {
  default = "Z10145347632NCTPP5W1"

}

variable "domain_name" {
  default = "syam-devops.online"

}

variable "environment" {
  default = "dev"
}