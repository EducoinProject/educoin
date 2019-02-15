
Debian
====================
This directory contains files used to package educoind/educoin-qt
for Debian-based Linux systems. If you compile educoind/educoin-qt yourself, there are some useful files here.

## educoin: URI support ##


educoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install educoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your educoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/educoin128.png` to `/usr/share/pixmaps`

educoin-qt.protocol (KDE)

