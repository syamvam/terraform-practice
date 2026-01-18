variable "instance_names" {
  type=list(string)
  default=["mysql","backend","frontend"]
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

variable "ami_id"{
    description = "this is the ami id of devops-practice"
    default = "ami-0220d79f3f480ecf5"
}

variable "sg_name" {
    default="allow_ssh"
  
}

variable "from_port"{
    default = 22
    type=number
}
variable "to_port" {
    default = 22
    type = number
}
variable "protocol"{
    default = "tcp"
    type=string
}
variable "ingress_cidr" {
  
  type=list(string)
  default = [ "0.0.0.0/0" ]
}
