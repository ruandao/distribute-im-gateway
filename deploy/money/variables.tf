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

variable "ip_manager" {
    description = "Database private ip"
    type        = string
    default = "10.0.1.50"
}

variable "work_destroy" {
  description = "docker swarm 工作节点拆除"
    type        = list(string)
    default =  [
      "if sudo docker info | grep -q 'Swarm: active'; then",
      "  sudo docker swarm leave",
      "fi"
    ]
}

