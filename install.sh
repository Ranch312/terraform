#! /bin/bash
mkdir terraform-conf
cd terraform-conf
curl -LO https://raw.github.com/robertpeteuil/terraform-installer/master/terraform-install.sh
apt-get install unzip
chmod +x terraform-install.sh
./terraform-install.sh
curl -LO https://raw.githubusercontent.com/Ranch312/terraform/main/main.tf
terraform init
