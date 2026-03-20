# AMI/tooling.pkr.hcl

source "amazon-ebs" "terraform-tooling-prj-19" {
  ami_name      = "terraform-tooling-prj-19-${local.timestamp}"
  instance_type = "t2.micro"
  region        = var.region

  source_ami_filter {
    filters = {
      name                = "RHEL-8.10.0_HVM-20251002-x86_64-1918-Hourly2-GP3"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["309956199498"]
  }

  ssh_username = "ec2-user"

  tag {
    key   = "Name"
    value = "terraform-tooling-prj-19"
  }
}

build {
  sources = ["source.amazon-ebs.terraform-tooling-prj-19"]

  provisioner "shell" {
    script = "tooling.sh"
  }
}