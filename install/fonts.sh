#!/usr/bin/env bash

PKG_FILE="$INSTALL_PATH/packages/fonts.packages"

# ---- 1. Check if file exists ----
if [[ -f "$PKG_FILE" ]]; then
    echo "Installing: $PKG_FILE..."
else
    echo "Error: $PKG_FILE not found." >&2
    exit 1
fi

# ---- 2. Install packages ----
while read -r pkg; do
    # Skip empty lines and comments
    [[ -z "$pkg" || "$pkg" =~ ^# ]] && continue
    
    echo "Installing $pkg..."
    
    Try pacman first
    if pacman -Qi "$pkg" &>/dev/null; then
        echo "$pkg is already installed via pacman."
    else
        if pacman -Ss "^$pkg$" &>/dev/null; then
            sudo pacman -S --needed --noconfirm "$pkg"
        else
            yay -S --needed --noconfirm "$pkg"
        fi
    fi
done < "$PKG_FILE"

echo "All font packages installed successfully!"
