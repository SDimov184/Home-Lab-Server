# Home Lab Server Setup

Documentation and configuration for a personal home server using Proxmox, including Nextcloud for file storage, a Dev VM, ZFS RAID, and WireGuard VPN.

## Table of Contents
1. [Client Examples](#client-examples)
2. [File Storage (Nextcloud)](#file-storage-nextcloud)
3. [Dev VM Setup](#dev-vm-setup)
4. [Backup Scripts](#backup-scripts)
5. [WireGuard VPN Setup](#wireguard-vpn-setup)
6. [Security Notes](#security-notes)
7. [Access Notes](#access-notes)
8. [Important](#important)

---

## Client Examples
- Windows laptop, Android phone, and iOS devices can access Nextcloud.
- SSH access to Dev VM and Proxmox host.
- Remote Desktop (RDP) access to Dev VM with MATE Desktop.

---

## File Storage (Nextcloud)
- Nextcloud installed in a VM with Ubuntu.
- Data stored in ZFS mirror RAID.
- Access via browser, mobile apps, and sync clients.
- Create users and groups for upload/download permissions.

---

## Dev VM Setup
- VM configured with 6GB RAM, 4 CPU cores.
- Accessible via SSH and RDP.
- Use as development station with projects stored on server.
- Can share projects using Nextcloud or directly via SSH.

---

## Backup Scripts
- Scripts stored in `/root/scripts/` or version-controlled folder.
- Automate ZFS snapshots, Nextcloud backups, and VM backups.

---

## WireGuard VPN Setup
- Server runs WireGuard to allow remote access.
- Example client configuration stored in `client-android.conf`.
- Supports multiple devices, with NAT or optional VPS relay.
- Make sure to configure allowed IPs and endpoint correctly.

---

## Security Notes
- Do not commit sensitive keys or passwords to GitHub.
- Use `.gitignore` to exclude:
  - WireGuard private keys
  - Nextcloud config files
  - Backup folders
- Keep OS and packages up to date.

---

## Access Notes
- Proxmox WebGUI: `https://<server-ip>:8006`
- SSH to Proxmox host: `ssh root@<server-ip>`
- Dev VM access:
  - SSH: `ssh user@<dev-vm-ip>`
  - RDP: Connect with MATE desktop
- Nextcloud: `https://<nextcloud-ip>/nextcloud`

---

## Important
- Keep track of your static IPs.
- Ensure ZFS pool has enough space before creating new VMs.
- Use VPN for secure remote access.
- Always backup important data.
