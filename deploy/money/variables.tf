variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-east-1"  # 可选默认值
}

variable "ami" {
    description = "AWS image id"
    type        = string
    # default = "ami-0dc01974ad601f4f5" # red hat
    default = "ami-0377be46c0ee1d01c" # aws linux
}