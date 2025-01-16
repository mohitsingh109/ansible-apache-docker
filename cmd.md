# Setting Up SSH Server


---

## **Commands and Their Purpose**

### **1. Update Package Index**
```bash
sudo apt update
```

### **2. Install OpenSSH Server**
```bash
sudo apt install openssh-server
```
-  Installs the OpenSSH server package, which allows the system to accept incoming SSH connections.
-  SSH (Secure Shell) is essential for secure remote login and command execution.

### **3. Start SSH Service**
```bash
sudo systemctl start ssh
```
-  Starts the SSH service immediately.
-  Enables the SSH server to accept incoming connections.

### **4. Enable SSH Service**
```bash
sudo systemctl enable ssh
```
-  Configures the SSH service to start automatically at system boot.
-  Ensures the SSH server is always running after reboots.

### **5. Check SSH Service Status**
```bash
sudo systemctl status ssh
```
-  Displays the current status of the SSH service.
  - **Active**: The service is running and accepting connections.
  - **Inactive/Failed**: The service is not running or encountered an issue.
-  Verifies whether the SSH server is functioning correctly.

### **6. Find VM IP Address**
```bash
ip addr
```
-  Lists all network interfaces and their IP addresses.
  - Look for the `inet` field under your active network interface (e.g., `enp0s1`).
-  Identifies the IP address needed to connect to the VM via SSH.

### **7. Connect to the VM via SSH**
```bash
ssh username@<VM-IP>
```
-  Initiates an SSH connection to the VM using the specified username and IP address.
  - Replace `username` with your VM's username.
  - Replace `<VM-IP>` with the IP address obtained from the `ip addr` command.
-  Provides secure remote access to the VM.

---

## **Example Workflow**
1. Update the package list:
   ```bash
   sudo apt update
   ```
2. Install the OpenSSH server:
   ```bash
   sudo apt install openssh-server
   ```
3. Start and enable the SSH service:
   ```bash
   sudo systemctl start ssh
   sudo systemctl enable ssh
   ```
4. Check the status of the SSH service:
   ```bash
   sudo systemctl status ssh
   ```
5. Find the IP address of your VM:
   ```bash
   ip addr
   ```
   Example output:
   ```
   inet 192.168.64.3/24
   ```
6. Connect to the VM from your local machine:
   ```bash
   ssh username@192.168.64.3
   ```

---