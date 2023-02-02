terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "OtherTG"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
