#!/usr/bin/env bash

# MODERN UNIX COMMANDS -script installs modern unix commands listed in https://github.com/ibraheemdev/modern-unix

ARCHITECTURE=$(uname -m)
if [ $(uname -m) == 'x86_64' ]; then
  ARCHITECTURE='amd64'
fi

# Install LSD
cd /tmp
wget "https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_${ARCHITECTURE}.deb"
sudo dpkg -i lsd_0.20.1_${ARCHITECTURE}.deb
rm lsd_0.20.1_${ARCHITECTURE}.deb

# Install fonts for LSD
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip"
unzip -o 3270.zip
rm 3270.zip
find  -type f -name "*Windows*" -delete
