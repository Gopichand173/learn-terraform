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
    value = "value of x1 $(var.x1)"
    }