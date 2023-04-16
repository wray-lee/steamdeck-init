#!/bin/bash

# privilege escalation
sudo passwd deck
sudo steamos-readonly disable
# vibrantDeck
echo 'Installing vibrantDeck'
export url='https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh' && sh -c "$(curl -KfsSL $url)"
echo 'Success'

# Herotic
echo 'Installing Heroic'
flatpak install flathub com.heroicgameslauncher.hgl
echo 'Success'

# Emudeck
export emu='https://raw.githubusercontent.com/dragoonDorise/EmuDeck/main/install.sh' && sh -c "$(curl -kfsSL $emu)" 
echo 'Success'
sudo steamos-readonly enable 
echo 'Scripts Finished'
echo "You can download default bios and rom at `echo $'\n'`https://drive.google.com/file/d/1V-NGoEiHYzqiImVhxPoaY_J4VPI6NL1n/view?usp=sharing"
#read -p "Emudeck is installed successfully. Would you wanna install default bios and rom? (y/n)`echo $'\n'`" _emu_
#if [ "$_emu_" == "y" ];then
#	wget -O
#	echo "Configure successfully"
#else
#	echo "Pass downloading default bios and rom"
#fi

# Ryujinx
#echo 'Installing Ryujinx'
#flatpak install flathub org.ryujinx.Ryujinx
#echo 'Success'

# yuzu
#echo 'Installing Yuzu'
#flatpak install flathub org.yuzu_emu.yuzu
#echo 'Success'

# cemu
#echo 'Installing Cemu'
#flatpak install flathub info.cemu.Cemu
#echo 'Success'
