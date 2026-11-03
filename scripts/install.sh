#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BACKUP="$HOME/VoidMint-Backups/$(date +%Y%m%d-%H%M%S)-$$"
STATE="$HOME/.local/state/voidmint"

echo "Checking requirements..."

for command in xfconf-query; do
    if ! command -v "$command" >/dev/null 2>&1; then
        echo "Missing command: $command"
        exit 1
    fi
done

if [ ! -d "$HOME/.local/share/icons/Bibata-Modern-Ice" ] &&
   [ ! -d "/usr/share/icons/Bibata-Modern-Ice" ]; then
    echo "Missing cursor theme: Bibata-Modern-Ice"
    exit 1
fi

if [ ! -d "/usr/share/icons/Papirus-Dark" ] &&
   [ ! -d "$HOME/.local/share/icons/Papirus-Dark" ]; then
    echo "Missing icon dependency: Papirus-Dark"
    exit 1
fi

items=(
    "themes/Void-Glass|.local/share/themes/Void-Glass"
    "icons/Void-Icons|.local/share/icons/Void-Icons"
    "configs/gtk-3.0/gtk.css|.config/gtk-3.0/gtk.css"
    "configs/gtk-3.0/void-grid.svg|.config/gtk-3.0/void-grid.svg"
    "configs/rofi/config.rasi|.config/rofi/config.rasi"
    "configs/picom/picom.conf|.config/picom/picom.conf"
    "configs/xfce4/terminal/terminalrc|.config/xfce4/terminal/terminalrc"
    "configs/fastfetch/config.jsonc|.config/fastfetch/config.jsonc"
    "configs/starship.toml|.config/starship.toml"
)

for item in "${items[@]}"; do
    source="${item%%|*}"
    if [ ! -e "$ROOT/$source" ]; then
        echo "Missing project file: $source"
        exit 1
    fi
done

mkdir -p "$BACKUP" "$STATE"
xfconf-query -c xsettings -p /Net/ThemeName > "$BACKUP/previous-gtk-theme"
xfconf-query -c xsettings -p /Net/IconThemeName > "$BACKUP/previous-icon-theme"
xfconf-query -c xsettings -p /Gtk/CursorThemeName > "$BACKUP/previous-cursor-theme"
xfconf-query -c xfwm4 -p /general/theme > "$BACKUP/previous-window-theme"

install_item() {
    local source="$ROOT/$1"
    local destination="$HOME/$2"

    mkdir -p "$(dirname "$destination")"

    if [ -e "$destination" ]; then
        local backup_path="$BACKUP/$2"
        mkdir -p "$(dirname "$backup_path")"
        mv "$destination" "$backup_path"
    fi

    cp -a "$source" "$destination"
}

echo "Installing VoidMint..."

for item in "${items[@]}"; do
    install_item "${item%%|*}" "${item#*|}"
done

xfconf-query -c xsettings -p /Net/ThemeName -s Void-Glass
xfconf-query -c xsettings -p /Net/IconThemeName -s Void-Icons
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Bibata-Modern-Ice
xfconf-query -c xfwm4 -p /general/theme -s Void-Glass

printf '%s\n' "$BACKUP" > "$STATE/last-backup"

echo "VoidMint installed successfully."
echo "Previous files: $BACKUP"
