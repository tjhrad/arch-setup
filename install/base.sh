#!/usr/bin/env bash

PKG_FILE="$INSTALL_PATH/packages/base.packages"

# ---- 1. Check if file exists ----
if [[ -f "$PKG_FILE" ]]; then
    echo "Installing: $PKG_FILE..."
else
    echo "Error: $PKG_FILE not found." >&2
    exit 1
fi


# ---- 2. Install yay if not installed ----
if ! command -v yay &> /dev/null; then
    echo "Installing yay..."
    TEMP_DIR=$(mktemp -d)
    git clone https://aur.archlinux.org/yay.git "$TEMP_DIR/yay"
    pushd "$TEMP_DIR/yay" >/dev/null
    makepkg -si --noconfirm
    popd >/dev/null
    rm -rf "$TEMP_DIR"
else
    echo "yay is already installed."
fi

# # ---- 3. Install packages ----
# while read -r pkg; do
#     # Skip empty lines and comments
#     [[ -z "$pkg" || "$pkg" =~ ^# ]] && continue
#
#     echo "Installing $pkg..."
#
#     # Try pacman first
#     if pacman -Qi "$pkg" &>/dev/null; then
#         echo "$pkg is already installed via pacman."
#     else
#         if pacman -Ss "^$pkg$" &>/dev/null; then
#             sudo pacman -S --needed --noconfirm "$pkg"
#         else
#             yay -S --needed --noconfirm "$pkg"
#         fi
#     fi
# done < "$PKG_FILE"
#
# echo "All base packages installed successfully!"


echo "Installing base packages from base.packages..."
if [[ -f "$PKG_FILE" ]]; then
    yay -S --needed --noconfirm - < "$PKG_FILE"
else
    echo "Error: base.packages file not found!"
    exit 1
fi

echo "✅ Base system setup complete."
