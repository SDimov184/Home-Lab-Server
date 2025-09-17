#!/bin/bash
# Backup all Proxmox VMs using vzdump
BACKUP_DIR="/root/backups/vms-$(date +%F)"
mkdir -p $BACKUP_DIR

# List of VM IDs to backup
VMS=(100 101)

for VMID in "${VMS[@]}"; do
    vzdump $VMID --storage local --mode snapshot --compress lzo --dumpdir $BACKUP_DIR
done

echo "VM backup completed at $BACKUP_DIR"
