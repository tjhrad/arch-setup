echo "Updating system and installing essential build tools..."
sudo pacman -Syu --needed --noconfirm
sudo pacman -S --needed --noconfirm base-devel git

echo "Backing up current pacman.conf and replacing with custom config..."
sudo cp /etc/pacman.conf /etc/pacman.conf.bak
sudo cp -f "$INSTALL_PATH/default/pacman/pacman.conf" /etc/pacman.conf
sudo pacman -Syy

echo "Updating mirror list..."
sudo pacman -S --needed --noconfirm reflector
sudo reflector --latest 10 --sort rate --protocol https --save /etc/pacman.d/mirrorlist
sudo pacman -Syy

echo "Installing and enabling paccache..."
sudo pacman -S --needed --noconfirm pacman-contrib
sudo systemctl enable --now paccache.timer
