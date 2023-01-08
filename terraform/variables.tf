variable "prefix" {
  description = "The prefix which should be used for all resources"
  type        = string
  default     = "mailinabox"
}

variable "location" {
  description = "The Azure Region in which all resources should be created."
  type        = string
  default     = "South Central US"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}
variable "vm_user" {
  type = string
  default = "mailinabox"
}
variable "vm_pub" {
  type = string
  default = "Canonical"
}
variable "vm_offer" {
  type = string
  default = "0001-com-ubuntu-server-jammy"
}
variable "vm_sku" {
  type = string
  default = "22_04-lts"
}
variable "vm_version" {
  type = string
  default = "latest"
}
variable "domain" {
  type = string
}
variable "nsg_rules" {
  type = map(
    object({
      direction = string,
      access = string,
      protocol = string,
      sport = string,
      dport = string,
      saddr = string,
      daddr = string,
      priority = number,
    })
  )
  default = {
    "ssh" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "22"
      protocol = "Tcp"
      priority = 100
      saddr = "*"
      sport = "*"
    },
    "smtp" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "25"
      protocol = "*"
      priority = 110
      saddr = "*"
      sport = "*"
    },
    "dns" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "53"
      protocol = "*"
      priority = 120
      saddr = "*"
      sport = "*"
    },
    "http" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "80"
      protocol = "*"
      priority = 130
      saddr = "*"
      sport = "*"
    },
    "https" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "443"
      protocol = "*"
      priority = 140
      saddr = "*"
      sport = "*"
    },
    "smtpsubmis" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "587"
      protocol = "*"
      priority = 150
      saddr = "*"
      sport = "*"
    },
    "imap" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "993"
      protocol = "*"
      priority = 160
      saddr = "*"
      sport = "*"
    },
    "pop" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "995"
      protocol = "*"
      priority = 170
      saddr = "*"
      sport = "*"
    },
    "sieve" = {
      access = "Allow"
      daddr = "*"
      direction = "Inbound"
      dport = "4190"
      protocol = "*"
      priority = 180
      saddr = "*"
      sport = "*"
    }
  }
}