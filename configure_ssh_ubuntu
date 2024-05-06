# Setting Up SSH Connection Between Guest OS and Host Machine

## On Guest OS (Virtual Machine)

### 1. Install OpenSSH Server
```bash
sudo apt install openssh-server
```

### 2. Check SSH Status
```bash
sudo systemctl status ssh
```

### 3. Enable and Start SSH Service if Inactive
```bash
sudo systemctl enable ssh --now
```

### 4. Firewall Configuration

#### Check Firewall Status
```bash
sudo ufw status
```

#### Check Open Ports
```bash
sudo lsof -i -P -n | grep LISTEN
```

#### Allow SSH Port 22 (if closed)
```bash
sudo ufw allow ssh
```

#### Check Firewall Status (Detailed)
```bash
sudo ufw status verbose
```

#### VirtualBox Network Settings
- Adapter: NAT
- Advanced Settings: Port Forwarding
  - Name: ssh
  - Protocol: TCP
  - Host IP: (blank)
  - Host Port: 2222
  - Guest IP: (blank)
  - Guest Port: 22

## On Host Machine

### 1. Install OpenSSH Client (if not already installed) or use SSH Client like PuTTY

### 2. Test SSH Connection
```bash
ssh -p 2222 username_of_guest_machine@localhost
```

Replace `username_of_guest_machine` with the actual username of the guest OS.

This guide provides step-by-step instructions to set up and test an SSH connection between a guest OS (virtual machine) and a host machine. It includes installing OpenSSH, configuring firewall rules, and testing the SSH connection.
