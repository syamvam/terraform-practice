variable "var_name" {
    default="Ramesh"
    type=string
  
}

variable "ami_id"{
    description = "this is the ami id of devops-practice"
    default = "sdfljasflj"
}
variable "instance_type" {
  default ="t3.micro"
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
