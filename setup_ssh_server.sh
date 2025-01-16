#!/bin/bash

# Update the system package index
sudo apt update

# Install the OpenSSH server package
sudo apt install -y openssh-server

# Start the SSH service
sudo systemctl start ssh

# Enable the SSH service to start on boot
sudo systemctl enable ssh

# Display the status of the SSH service
sudo systemctl status ssh

# Fetch and display the IP address of the machine
IP_ADDRESS=$(ip addr show | grep -oP '(?<=inet\s)\d+\.\d+\.\d+\.\d+' | grep -v '^127\.')
echo "The IP address of this machine is: $IP_ADDRESS"
