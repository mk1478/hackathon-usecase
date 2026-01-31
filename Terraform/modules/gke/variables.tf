    variable "cluster_name" {
    type = string
    }

    variable "region" {
    type = string
    }

    variable "network" {
    description = "VPC self link"
    type        = string
    }

    variable "subnetwork" {
    description = "Private subnet self link"
    type        = string
    }

    variable "service_account" {
    type = string
    }

    variable "node_count" {
    type = number
    }
