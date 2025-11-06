echo "Applying Breeze Dark theme"

lookandfeeltool -a org.kde.breezedark.desktop

# Ensure application style & decorations
kwriteconfig6 --file kdeglobals --group KDE --key widgetStyle "breeze"
kwriteconfig6 --file kwinrc --group org.kde.kdecoration2 --key Library "org.kde.breezedecoration"
kwriteconfig6 --file kwinrc --group org.kde.kdecoration2 --key Theme "org.kde.breezedecoration"

# Refresh KWin to apply
qdbus org.kde.KWin /KWin reconfigure

echo "✅ Breeze Dark theme applied."
