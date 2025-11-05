echo "Enabling essential services..."

# Networking
sudo systemctl enable --now NetworkManager.service
sudo systemctl enable --now systemd-timesyncd.service

# SSD trim
sudo systemctl enable --now fstrim.timer

# Reflector (if installed)
sudo systemctl enable --now reflector.timer 2>/dev/null || true

# Printer + Bluetooth
sudo systemctl enable --now cups.service
sudo systemctl enable --now bluetooth.service

# Docker
sudo systemctl enable --now docker.service

# Avahi
sudo systemctl enable --now avahi-daemon
