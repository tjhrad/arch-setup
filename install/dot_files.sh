SOURCE_CONFIG_DIR="$INSTALL_PATH/config"
TARGET_CONFIG_DIR="$HOME/.config"

echo "🔧 Syncing config directory..."

# Ensure base config directory exists
if [[ ! -d "$SOURCE_CONFIG_DIR" ]]; then
    echo "Error: $SOURCE_CONFIG_DIR not found."
    exit 1
fi

mkdir -p "$TARGET_CONFIG_DIR"

timestamp=$(date +'%Y%m%d-%H%M%S')

for item in "$SOURCE_CONFIG_DIR"/*; do
    name=$(basename "$item")
    target="$TARGET_CONFIG_DIR/$name"

    # If the directory/file exists in ~/.config, back it up
    if [[ -e "$target" ]]; then
        backup="$TARGET_CONFIG_DIR/.backup-${name}-${timestamp}"
        echo "⚠️  Conflict detected: $name already exists."
        echo "📦 Creating backup: $backup"
        mv "$target" "$backup"
    fi

    echo "📁 Copying $name → $TARGET_CONFIG_DIR/"
    cp -r "$item" "$TARGET_CONFIG_DIR/"
done

echo "✅ Configuration sync complete."
