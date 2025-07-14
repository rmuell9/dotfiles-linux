#!/bin/bash

# Check current theme
current=$(gsettings get org.gnome.desktop.interface gtk-theme)

if [[ $current == *"dark"* ]]; then
    # Switch to light
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
else
    # Switch to dark
    gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
fi
