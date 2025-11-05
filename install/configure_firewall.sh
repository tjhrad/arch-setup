echo "Configuring firewall: UFW"

echo "[+] Reset UFW to clean state..."
sudo ufw --force reset

echo "[+] Default deny incoming, allow outgoing..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow basic services (modify as needed)
echo "[+] Allowing common services..."
#sudo ufw allow 22/tcp    comment "SSH"
sudo ufw allow 80/tcp    comment "HTTP"
sudo ufw allow 443/tcp   comment "HTTPS"

# KDE / Avahi / Printer discovery (optional)
sudo ufw allow 5353/udp  comment "mDNS / Avahi"
sudo ufw allow 631/tcp   comment "CUPS printing"

echo "[+] Enable and start firewall..."
sudo ufw enable
sudo systemctl enable ufw.service
sudo systemctl start ufw.service

echo "[+] UFW Status:"
sudo ufw status verbose
