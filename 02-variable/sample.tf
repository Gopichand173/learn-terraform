#x1= abc shell
#x1: abc ansible

variable "x1"{
    default = "abc"
    }

output "x1"{
    #direct varible usage
    value = var.x1
    }

output "x2"{
    #for string
    value = "value of x1 is ${var.x1}"
    }

#data types
#string need to give in double quotes
#number no need of quotes
#boolean no need of quotes

variable "string1"{
    default = "abc"
    }

variable "num1"{
    default = 100
    }

variable "num2"{
    default = 100.2
    }

variable "boolean"{
    default = true
    }

# Varibale types
#plain
#list
#map

variable "plain"{
    default = "abc"
    }

variable "list"{
    default = ["abc",123,true]
    }

variable "map"{
    default = {
        name = "devops"
        skill = "engineer"
        }
    }

output "list"{
    value = var.list[1]
    }


output "map"{
        value = var.map["skill"]
        }

#value will automatic pick from tfvars
variable "x"{

    }

#dev.tfvars,prod.tfvars  -> this needs to be exculsively passed with -var-file from cli
variable "env"{
    }

output "env"{
    value = var.env
    }
#file name has to be different, but the fileneeds to be loaded automatically, then auto.tfvars
varibale "x4"{
    }

output "env"{
    value = var.x4
    }