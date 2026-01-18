variable "environment" {
  default = "prod"
}

variable "ami_id"{
    description = "this is the ami id of devops-practice"
    default = "ami-0220d79f3f480ecf5"
}
variable "tags" {
  type = map #optional
  default = {
    Name= "terraform"
    Project ="expense"
    Component="backend"
    Environment="dev"
    Terraform =true
  }
}

