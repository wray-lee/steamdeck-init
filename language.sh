#!/bin/bash
# Disable read-only
sudo steamos-readonly disable
# Init Pacman Keys
sudo pacman-key --init
sudo pacman-key --populate archlinux
# Install glibc
sudo pacman -S glibc --noconfirm
# Edit locale.gen
sudo sed -i "s%#zh_CN.UTF-8 UTF-8%zh_CN.UTF-8 UTF-8%" /etc/locale.gen
# generate locale
sudo locale-gen zh_TW zh_TW.UTF-8 zh_CN.UTF-8 ja_JP.UTF-8 en_US.UTF-8
# Install kde translation software,plasma
sudo pacman -S ki18n --noconfirm
sudo pacman -S plasma --noconfirm
# Reinstall
#sudo pacman -Qq > packages.txt
#for pkgName in $(cat ./packages.txt)
#do
#  sudo pacman -S $pkgName --noconfirm
#done
# Enable read-only
sudo steamos-readonly enable
# Finished
echo "Finished!Plz reboot to apply all changes"
