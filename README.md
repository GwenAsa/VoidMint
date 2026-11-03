# VoidMint

### The Quiet Side of Linux

A minimal, elegant XFCE desktop rice for Void Linux.

VoidMint brings a calm green visual identity to the XFCE desktop, combining custom themes, carefully selected tools, and lightweight configurations.

---

## Features

- Custom GTK theme derived from Orchis
- Custom green folder icon theme
- XFCE window manager styling
- Minimal Rofi application launcher
- Lightweight Picom configuration
- Custom GTK CSS enhancements
- Matching XFCE Terminal configuration
- Fastfetch configuration
- Starship prompt configuration
- Backup-aware installation script
- Configuration restoration script

## Preview

Screenshots and visual previews will be added soon.

## Design Palette

| Color | Hex |
|---|---|
| Primary Green | `#478061` |
| Light Sage | `#ABC2AB` |
| Background | `#101713` |
| Dark Surface | `#19241D` |
| Foreground | `#E3EAE4` |
| Muted | `#89988F` |

## Requirements

- Void Linux (glibc)
- XFCE 4
- GTK 3
- Xfconf
- Rofi
- Picom
- XFCE Terminal
- Fastfetch
- Starship
- Papirus-Dark
- Bibata-Modern-Ice

See [DEPENDENCIES.md](docs/DEPENDENCIES.md) for dependency details.

## Installation

Clone the repository:

    git clone https://github.com/GwenAsa/VoidMint.git
    cd VoidMint

Run the installer:

    chmod +x scripts/install.sh
    ./scripts/install.sh

The installer creates backups of existing configuration files before replacing them.

## Restoration

To restore the previous configuration:

    ./scripts/restore.sh

The restoration script preserves the currently installed VoidMint files separately.

## Project Structure

    VoidMint/
    ├── assets/
    ├── configs/
    │   ├── fastfetch/
    │   ├── gtk-3.0/
    │   ├── picom/
    │   ├── rofi/
    │   ├── xfce4/
    │   └── starship.toml
    ├── docs/
    │   └── DEPENDENCIES.md
    ├── icons/
    │   └── Void-Icons/
    ├── scripts/
    │   ├── install.sh
    │   └── restore.sh
    ├── themes/
    │   └── Void-Glass/
    ├── .gitignore
    ├── NOTICE.md
    └── README.md

## Credits

The GTK theme is derived from [Orchis-theme](https://github.com/vinceliuice/Orchis-theme).

Papirus-Dark and Bibata-Modern-Ice are external dependencies and are not original VoidMint assets.

See [NOTICE.md](NOTICE.md) for third-party notices and attribution.

## Project Status

Work in progress.

VoidMint is a personal XFCE rice project for Void Linux, not an independent Linux distribution.

---

Made with care by [GwenAsa](https://github.com/GwenAsa).
