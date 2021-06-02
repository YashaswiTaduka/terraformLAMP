#Declaring the required variables

variable "access_key" {
    type = string
    default = "deleted while pushing to Github"
}

variable "secret_key" {
    type = string
    default = "deleted while pushing to Github"
}

variable "region" {
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"  
}

variable "subnet_one_cidr" {
    type = string
    default = "10.0.1.0/24"
}

variable "subnet_two_cidr" {
    type = list(string)
    default = ["10.0.2.0/24" , "10.0.3.0/24"]
}

variable "route_table_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "web_ports" {
    type = list(string)
    default = ["22" , "443" , "80" , "3306"]
}

variable "db_ports" {
    type = list(string)
    default = ["22" , "3306"]
}

variable "host" {
default = "aws_instance.my_web_instance.public_dns"
}

variable "images" {
    type = map
    default = {
        "us-east-1" = "ami-0d5eff06f840b45e9"
    }
}


