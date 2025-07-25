#!/bin/bash

# installing package manager
sudo pacman -S git stow
cd /tmp/
git clone "https://aur.archlinux.org/paru-bin" 
cd /tmp/paru-bin
makepkg -si


## Adding my dotfiles and stowing it
cd ~/.local/
git clone https://github.com/prinixoz/dotfiles
cd ~/.local/dotfiles
stow -vt ~ config/ scripts/

## Setting caotic aur
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "
###################################################################################################

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist

###################################################################################################
" | sudo tee -a /etc/pacman.conf

## Install Package
paru -S (sed '/^#/d'  install.txt ) --needed

echo "
###### LOGIN TO WINDOW MANAGER ######
if [ -f "/home/user/.config/bash/bashrc" ]; then
    source /home/user/.config/bash/bashrc
fi
#####################################
" | sudo tee -a /etc/profile /etc/bash.bashrc

fonts(){
 sudo pacman -S (sudo pacman -Ss ttf -q)
}

fc-cache -fv
sudo pacman -Syyu

curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | sudo tee /etc/hosts


