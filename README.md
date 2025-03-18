# Use these commands to downlaod and initialize the installer
curl -LO https://raw.githubusercontent.com/Ranch312/terraform/main/install.sh && chmod +x install.sh && ./install.sh

# After this, you can then tweak the main.tf file or replace it with another .tf found in the private repo
1. terraform plan main.tf
2. terraform apply main.tf
