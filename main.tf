
provider "aws" {
  region     = "us-east-2" 
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

variable "aws_access_key" {
  default = "sua_chave"
}

variable "aws_secret_key" {
  default = "sua_chave_secreta"
}

resource "aws_instance" "example" {
  ami           = "ami-0d8c288225dc75373"  
  instance_type = "t2.micro"

    tags = {
    Name = "MeuServidorTeste"
  }  
}
