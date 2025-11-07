echo "Creating ~/.local/bin/"
mkdir -p ~/.local/bin/

echo "Copying scripts..."
cp "$INSTALL_PATH/bin/"* ~/.local/bin/

echo "Creating executables..."
chmod +x ~/.local/bin/*
