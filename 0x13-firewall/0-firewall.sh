#!/usr/bin/env bash
# Configure ufw firewall to block all incoming traffic except SSH (22), HTTP (80), and HTTPS (443)

# Ensure UFW is installed
sudo apt-get update
sudo apt-get install -y ufw

# Stop UFW if running
sudo ufw disable

# Reset to default state
sudo ufw --force reset

# Set default policies explicitly
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow specific ports
sudo ufw allow in 22/tcp
sudo ufw allow in 80/tcp  
sudo ufw allow in 443/tcp

# Enable UFW
sudo ufw --force enable

# Wait a moment for rules to apply
sleep 2

# Verify the firewall is active
sudo ufw status numbered
echo "UFW Status:"
sudo ufw status verbose