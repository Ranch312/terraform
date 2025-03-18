terraform {
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
        }
    }
}

provider "proxmox" {
# pm_api_url will change depending on which Dataceneter you are in ie: ProdCluster
    pm_api_url          = "https://172.27.150.***:8006/api2/json"
    pm_api_token_id     = "your-token-id"
    pm_api_token_secret = "your-secret"
    pm_tls_insecure     = true
}

resource "proxmox_vm_qemu" "test-instance" {
    name                = "test-instance"
    target_node         = "proxmoxsummit1"
    clone               = "TestTemplate"
    full_clone          = true
    cores               = 2
    memory              = 2048

    disk {
        size            = "20G"
        type            = "scsi"
        storage         = "ProdISCSI-LVM"
        discard         = "on"
    }

    network {
        model     = "virtio"
        bridge    = "vmbr1"
        firewall  = false
        link_down = false
    }

}
