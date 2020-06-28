variable "region" {
    type = string
    description = "(optional) describe your variable"
    default     = "us-east-1"
}


variable "environment" {
    type = string
    description = "(optional) describe your variable"
    default     = "dev"
}

variable "vpc_cidr" {
    type = string
    description = "(optional) describe your variable"
    }

variable "private_subnets" {
     type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
     type    = list(string)
     default = ["10.0.6.0/24", "10.0.7.0/24", "10.0.8.0/24"]
    description = "(optional) describe your variable"
}


variable "tags" {
    type = map(string)
    description = "(optional) describe your variable"
    default = {
        Name = "Dev}"
        Owner = "Sunil SIngh"
        
    }
}
