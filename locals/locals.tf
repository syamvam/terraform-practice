locals {
  
  domain_name="syam-devops.online"
  zone_id="Z10145347632NCTPP5W1"
  instance_type = var.environment=="prod"?"t3.medium":"t3.micro"
}