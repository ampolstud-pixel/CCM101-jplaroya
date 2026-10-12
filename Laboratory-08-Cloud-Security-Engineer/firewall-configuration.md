# Firewall Configuration

## 1. Allow SSH

**Command:**

sudo ufw allow ssh

This command allows SSH connections for remote server administration. Adding this rule before enabling the firewall helps prevent administrators from losing remote access.

## 2. Configure the Default Deny Policy

**Commands:**

sudo ufw default deny incoming
sudo ufw default allow outgoing

The first command blocks incoming connections unless a firewall rule allows them. The second command allows outgoing connections by default.

## 3. Enable the Firewall

**Command:**

sudo ufw enable

This command activates the firewall and applies the configured rules to incoming and outgoing network traffic.

## 4. Allow Web Traffic on Port 8080

**Command:**

sudo ufw allow 8080/tcp

This rule allows TCP connections through port 8080. The port is mapped to the Nginx web server, allowing users to access the website through the configured host port.

## 5. Verify the Firewall Rules

**Commands:**

sudo ufw status verbose
sudo ufw status numbered

These commands display the firewall status, default policies, and configured rules. The numbered list also makes individual rules easier to identify and manage.

## 6. Security Note

Allow SSH before enabling the firewall on a remotely managed server. If the firewall is enabled with a default incoming-deny policy before SSH access is allowed, the administrator may lose remote access. Configuring the required rules first helps prevent connection problems while keeping the server protected.
