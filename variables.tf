variable "aws_region" {
  description = "the region code"
  default     = "ap-south-1"
}

variable "mediawiki_ip" {
  description = "Reserved IP for mediawiki server"
  default     = "eipalloc-03b72f259d374c443"
}

variable "subnet_ID" {
   description = "Subnet ID"
  default     = "subnet-0698441978a443411"
  }

variable "security_group_ID" {
   description = "Security group ID"
  default     = "sg-0d3c94d96b36416e7"
  }
