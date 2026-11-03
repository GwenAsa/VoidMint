 <div align="center">

<img src="assets/banner.svg" alt="VoidMint — The Quiet Side of Linux" width="100%">

<br>






Repository · Dependencies · Installation · Credits

<br>

<sub>A desktop experience shaped by simplicity, independence, and a little green.</sub>

</div>

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/sparkles.svg" width="25" align="center"> The quiet side of Linux.

VoidMint is a custom desktop experience for Void Linux + XFCE.

Inspired by the independent spirit of Void Linux and the familiar, welcoming identity of Linux Mint, VoidMint brings a fresh visual direction to the traditional Linux desktop.

Deep forest backgrounds. Muted sage accents. Carefully coordinated icons. Minimal interfaces.

Every detail contributes to one cohesive environment — without turning a lightweight desktop into a heavyweight experience.

Not a distribution. Not a desktop environment. A desktop identity.

<div align="center">
  <img src="assets/screenshots/desktop-overview.png" width="100%" alt="VoidMint complete desktop">
  <sub>THE VOIDMINT DESKTOP · A FIRST LOOK</sub>
</div>

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/layers.svg" width="25" align="center"> Inside VoidMint

A collection of coordinated themes, configurations, and tools — designed to work together.

<table>
<tr>
<td width="76" align="center"><img src="assets/icons/theme.svg" width="52" alt=""></td>
<td>
<b>Void-Glass</b><br>
A custom GTK theme derived from Orchis, adapted to the VoidMint visual identity.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/folder.svg" width="52" alt=""></td>
<td>
<b>Void-Icons</b><br>
A custom green folder icon theme that gives the file manager a distinctive appearance.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/window.svg" width="52" alt=""></td>
<td>
<b>XFCE Desktop</b><br>
Carefully styled XFCE configuration and window-manager settings.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/launcher.svg" width="52" alt=""></td>
<td>
<b>Rofi</b><br>
A minimal application launcher configuration that fits the overall aesthetic.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/layers.svg" width="52" alt=""></td>
<td>
<b>Picom</b><br>
A lightweight compositor configuration for the desktop.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/terminal.svg" width="52" alt=""></td>
<td>
<b>Terminal Environment</b><br>
A coordinated XFCE Terminal configuration, custom Fastfetch display, and Starship prompt.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/code.svg" width="52" alt=""></td>
<td>
<b>GTK Styling</b><br>
Additional GTK CSS customization for a more consistent interface.
</td>
</tr>
<tr>
<td align="center"><img src="assets/icons/shield.svg" width="52" alt=""></td>
<td>
<b>Backup-aware Installer</b><br>
An installation script that backs up existing configurations before applying changes, alongside a restoration script.
</td>
</tr>
</table>

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/image.svg" width="25" align="center"> The visual experience

VoidMint is meant to feel consistent, not crowded.

Each component follows the same visual direction, from the smallest folder icon to the overall desktop layout.

<div align="center">

<img src="assets/screenshots/desktop.png" width="100%" alt="VoidMint desktop environment">

01 — The desktop

<sub>The complete XFCE environment.</sub>

<br><br>

<img src="assets/screenshots/theme.png" width="92%" alt="Void-Glass GTK theme">

02 — Void-Glass

<sub>Dark surfaces and subtle green details.</sub>

<br><br>

<img src="assets/screenshots/icons.png" width="92%" alt="Void-Icons folder theme">

03 — Void-Icons

<sub>A custom green identity for folders.</sub>

<br><br>

<img src="assets/screenshots/launcher.png" width="92%" alt="VoidMint Rofi launcher">

04 — Rofi

<sub>A minimal launcher, visually integrated with the desktop.</sub>

<br><br>

<img src="assets/screenshots/terminal.png" width="92%" alt="VoidMint terminal configuration">

05 — Terminal

<sub>XFCE Terminal, Fastfetch, and Starship.</sub>

<br><br>

<img src="assets/screenshots/details.png" width="92%" alt="VoidMint desktop details">

06 — Details

<sub>The little things matter.</sub>

</div>

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/palette.svg" width="25" align="center"> A color language

The VoidMint palette takes inspiration from natural greens and the depth of a dark forest.

It is intentionally restrained: green is an identity, not a distraction.

<div align="center">
  <img src="assets/palette.svg" width="100%" alt="VoidMint color palette">
</div>

Color

Name

Hex

<img src="assets/icons/swatch-primary.svg" width="25" align="center">

Primary Green

#478061

<img src="assets/icons/swatch-sage.svg" width="25" align="center">

Light Sage

#ABC2AB

<img src="assets/icons/swatch-background.svg" width="25" align="center">

Background

#101713

<img src="assets/icons/swatch-surface.svg" width="25" align="center">

Dark Surface

#19241D

<img src="assets/icons/swatch-foreground.svg" width="25" align="center">

Foreground

#E3EAE4

<img src="assets/icons/swatch-muted.svg" width="25" align="center">

Muted

#89988F

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/package.svg" width="25" align="center"> Project structure

VoidMint/
│
├── assets/
│
├── configs/
│   ├── fastfetch/
│   ├── gtk-3.0/
│   ├── picom/
│   ├── rofi/
│   ├── xfce4/
│   └── starship.toml
│
├── docs/
│   └── DEPENDENCIES.md
│
├── icons/
│   └── Void-Icons/
│
├── scripts/
│   ├── install.sh
│   └── restore.sh
│
├── themes/
│   └── Void-Glass/
│
├── .gitignore
├── NOTICE.md
└── README.md

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/clipboard.svg" width="25" align="center"> Requirements

Component

Requirement

<img src="assets/icons/linux.svg" width="20" align="center"> Operating system

Void Linux (glibc)

<img src="assets/icons/desktop.svg" width="20" align="center"> Desktop

XFCE 4

<img src="assets/icons/gtk.svg" width="20" align="center"> Toolkit

GTK 3

<img src="assets/icons/settings.svg" width="20" align="center"> Configuration

Xfconf

<img src="assets/icons/launcher.svg" width="20" align="center"> Launcher

Rofi

<img src="assets/icons/layers.svg" width="20" align="center"> Compositor

Picom

<img src="assets/icons/terminal.svg" width="20" align="center"> Terminal

XFCE Terminal

<img src="assets/icons/activity.svg" width="20" align="center"> System information

Fastfetch

<img src="assets/icons/command.svg" width="20" align="center"> Shell prompt

Starship

<img src="assets/icons/folder.svg" width="20" align="center"> Icon dependency

Papirus-Dark

<img src="assets/icons/mouse.svg" width="20" align="center"> Cursor dependency

Bibata-Modern-Ice

For additional dependency information, see docs/DEPENDENCIES.md.

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/download.svg" width="25" align="center"> Installation

Clone the repository:

git clone https://github.com/GwenAsa/VoidMint.git
cd VoidMint

Run the installer:

chmod +x scripts/install.sh
./scripts/install.sh

<div align="center">
  <img src="assets/icons/shield-check.svg" width="38" alt="">
  <br>
  <b>Your existing configuration comes first.</b>
  <br>
  <sub>The installer backs up existing configuration before replacing it.</sub>
</div>

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/history.svg" width="25" align="center"> Restoration

Want to go back to your previous configuration?

Run:

./scripts/restore.sh

The restoration script preserves the currently installed VoidMint files separately before restoring the previous configuration.

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/heart.svg" width="25" align="center"> Credits

VoidMint stands on the shoulders of excellent open-source projects.

Project

Contribution

Void Linux

Operating system

Linux Mint

Visual inspiration

Orchis

GTK theme foundation

Papirus

Icon theme dependency

Bibata

Cursor theme dependency

XFCE

Desktop environment

Rofi

Application launcher

Picom

Compositor

Fastfetch

System information

Starship

Shell prompt

See NOTICE.md for attribution and licensing details.

<img src="assets/divider.svg" width="100%" alt="">

<img src="assets/icons/roadmap.svg" width="25" align="center"> Project status

Work in progress.

VoidMint is an evolving desktop customization project. Its visual identity, configurations, and documentation are being refined over time.

The intention is simple:

Keep the desktop lightweight.

Make every visual element feel intentional.

Build a recognizable identity.

Keep the experience practical and easy to restore.

<div align="center">

<img src="assets/branding/voidmint-mark.svg" width="100" alt="VoidMint emblem">

VOIDMINT

The Quiet Side of Linux.

<sub>Independent spirit. Natural colors. A desktop of its own.</sub>

<br>

GitHub Repository · Developer

<img src="assets/branding/footer-ornament.svg" width="65%" alt="VoidMint footer ornament">

</div>
