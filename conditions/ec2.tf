  resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.environment == "prod"? "t3.small" : "t3.micro"
  tags= var.tags
  
  }  
