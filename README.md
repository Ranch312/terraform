# Use these commands to downlaod and initialize the installer
curl -LO https://raw.githubusercontent.com/Ranch312/terraform/main/install.sh
chmod +x install.sh
./install.sh

# After this, you can then tweak the main.tf file or replace it with a plan.tf file
terraform apply main.tf
