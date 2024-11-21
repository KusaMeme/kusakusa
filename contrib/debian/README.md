
Debian
====================
This directory contains files used to package kusad/kusa-qt
for Debian-based Linux systems. If you compile kusad/kusa-qt yourself, there are some useful files here.

## kusa: URI support ##


kusa-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kusa-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kusa-qt binary to `/usr/bin`
and the `../../share/pixmaps/kusa128.png` to `/usr/share/pixmaps`

kusa-qt.protocol (KDE)

