#x1= abc shell
#x1: abc ansible

variable "x1"{
    default = "abc"
    }

output "x1"{
    value = var.x1
    }

output "x1"{
    value = $(var.x1)
    }