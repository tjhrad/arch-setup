#!/usr/bin/env bash

PKG_FILE="$INSTALL_PATH/packages/extras.packages"

# ---- 1. Check if file exists ----
if [[ -f "$PKG_FILE" ]]; then
    echo "Installing: $PKG_FILE..."
else
    echo "Error: $PKG_FILE not found." >&2
    exit 1
fi

# ---- 2. Install packages ----
echo "Installing base packages from base.packages..."
if [[ -f "$PKG_FILE" ]]; then
    yay -S --needed --noconfirm - < "$PKG_FILE"
else
    echo "Error: base.packages file not found!"
    exit 1
fi

echo "✅  Extra package setup complete."
