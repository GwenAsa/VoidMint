#!/bin/bash
set -euo pipefail

STATE="$HOME/.local/state/voidmint/last-backup"

if [ ! -f "$STATE" ]; then
    echo "No VoidMint backup found."
    exit 1
fi

BACKUP="$(cat "$STATE")"

case "$BACKUP" in
    "$HOME"/VoidMint-Backups/*) ;;
    *)
        echo "Invalid backup path."
        exit 1
        ;;
esac

if [ ! -d "$BACKUP" ]; then
    echo "Backup directory not found: $BACKUP"
    exit 1
fi

for file in previous-gtk-theme previous-icon-theme previous-cursor-theme previous-window-theme; do
    if [ ! -f "$BACKUP/$file" ]; then
        echo "Missing backup setting: $file"
        exit 1
    fi
done

REMOVED="$HOME/VoidMint-Removed/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$REMOVED"

items=(
    ".local/share/themes/Void-Glass"
    ".local/share/icons/Void-Icons"
    ".config/gtk-3.0/gtk.css"
    ".config/gtk-3.0/void-grid.svg"
    ".config/rofi/config.rasi"
    ".config/picom/picom.conf"
    ".config/xfce4/terminal/terminalrc"
    ".config/fastfetch/config.jsonc"
    ".config/starship.toml"
)

echo "Restoring previous configuration..."

for item in "${items[@]}"; do
    current="$HOME/$item"
    previous="$BACKUP/$item"

    if [ -e "$current" ]; then
        mkdir -p "$REMOVED/$(dirname "$item")"
        mv "$current" "$REMOVED/$item"
    fi

    if [ -e "$previous" ]; then
        mkdir -p "$(dirname "$current")"
        mv "$previous" "$current"
    fi
done

xfconf-query -c xsettings -p /Net/ThemeName -s "$(cat "$BACKUP/previous-gtk-theme")"
xfconf-query -c xsettings -p /Net/IconThemeName -s "$(cat "$BACKUP/previous-icon-theme")"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "$(cat "$BACKUP/previous-cursor-theme")"
xfconf-query -c xfwm4 -p /general/theme -s "$(cat "$BACKUP/previous-window-theme")"

echo "Restore completed."
echo "VoidMint files preserved in: $REMOVED"
