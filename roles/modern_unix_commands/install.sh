#!/usr/bin/env bash

# MODERN UNIX COMMANDS - installation script for most of the commands listed in https://github.com/ibraheemdev/modern-unix

ARCHITECTURE=$(uname -m)
if [ $(uname -m) == 'x86_64' ]; then
  ARCHITECTURE='amd64'
fi

# # Install LSD
# cd /tmp
# wget "https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_${ARCHITECTURE}.deb"
# sudo dpkg -i lsd_0.20.1_${ARCHITECTURE}.deb
# rm lsd_0.20.1_${ARCHITECTURE}.deb

# # Install fonts for LSD
# mkdir -p ~/.local/share/fonts
# cd ~/.local/share/fonts
# wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip"
# unzip -o 3270.zip
# rm 3270.zip
# find  -type f -name "*Windows*" -delete

# Install EXA
mkdir -p /tmp/exa
cd /tmp/exa
wget "https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-$(uname -m)-v0.10.0.zip"
unzip -o exa-linux-$(uname -m)-v0.10.0.zip
sudo mv ./bin/exa /usr/bin
rm -rf /tmp/exa

# Install HYPERFINE
cd /tmp
wget "https://github.com/sharkdp/hyperfine/releases/download/v1.12.0/hyperfine_1.12.0_${ARCHITECTURE}.deb"
sudo dpkg -i hyperfine_1.12.0_${ARCHITECTURE}.deb
rm hyperfine_1.12.0_${ARCHITECTURE}.deb

# Install CURLIE
cd /tmp
wget "https://github.com/rs/curlie/releases/download/v1.6.0/curlie_1.6.0_linux_${ARCHITECTURE}.deb"
sudo dpkg -i curlie_1.6.0_linux_${ARCHITECTURE}.deb
rm curlie_1.6.0_linux_${ARCHITECTURE}.deb

# Install GPING
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install gping

# Install BAT, FD
sudo apt-get install -y bat
sudo apt-get install -y fd-find

# Install BOTTOM DUST DUF PROCS
sudo snap install bottom
sudo snap install dust
sudo snap install duf-utility
sudo snap install procs
sudo snap install httpie

# Install BROOT
cd /tmp
wget https://dystroy.org/broot/download/x86_64-linux/
chmod +x broot
sudo mv broot /usr/bin

# Install GLANCES TLDR
pip3 install --user glances
pip3 install --user tldr

# Install GTOP
sudo npm install gtop -g

# Install XH --
# Execute Manually!
# curl -sfL https://raw.githubusercontent.com/ducaale/xh/master/install.sh | sh
