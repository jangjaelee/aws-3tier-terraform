provider "aws" {
  region = var.region  
}

module "<name>" {
  source = "../../module/<directory>"

  region = var.region
  <module_variable> = <local_variable>
}
