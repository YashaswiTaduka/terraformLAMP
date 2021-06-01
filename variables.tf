#Declaring the required variables

variable "access_key" {
    type = string
    default = "AKIAUYAC7DWPLRKIJ4WO"
}

variable "secret_key" {
    type = string
    default = "zoIJcP2C145v0WXpUwJLJd8qyA6ofJR3TwIiu1Hg"
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
    type = string
    default = ["10.0.2.0/24" , "10.0.3.0/24"]
}

variable "route_table_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "web_ports" {
    type = string
    default = ["22" , "443" , "80" , "3306"]
}

variable "db_ports" {
    type = string
    default = ["22" , "3306"]
}

variable "images" {
    type = "map"
    default = {
        "us-east-1" = "ami-0d5eff06f840b45e9"
    }
}