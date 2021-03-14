#!/bin/bash

# Instalando repositorios
sudo add-apt-repository ppa:lutris-team/lutris
sudo add-apt-repository ppa:damentz/liquorix
sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo ubuntu-drivers autoinstall -y
#
sudo apt install nvidia-driver-440 -y
sudo apt install nvidia-cuda-toolkit -y
sudo apt install gdebi -y
sudo apt install gedit -y
sudo apt install lutris -y
sudo apt install lazarus -y
sudo apt install blender -y
sudo apt install gimp -y
sudo apt install flamerobin -y
sudo apt install lmms -y
sudo apt install qbittorrent -y
sudo apt install sooperlooper -y
sudo apt-get install qjack* -y
sudo apt-get install g++ -y
sudo apt install git -y
sudo apt install nodejs -y
sudo apt install flatpak -y
sudo apt-get install geany -y
sudo apt-get install sqlite3 -y
sudo apt-get install libsqlite3-dev -y
sudo apt-get install sqlitebrowser -y
sudo apt install npm -y
sudo apt install winff -y
sudo apt install gamemode -y
sudo apt install jstest-gtk -y
sudo apt install openjdk-11-jdk -y
sudo apt install adb -y
sudo apt install fastboot -y
sudo snap install android-studio --classic
sudo snap install code --classic
sudo snap install telegram-desktop
sudo snap install obs-studio
sudo snap install vlc
sudo snap install chromium
sudo snap install youtube-dl
sudo snap install snap-store
sudo snap install flameshot
sudo snap install sublime-text --classic
#
mkdir pg
cd pg
wget -c https://www.tonelib.net/download/ToneLib-GFX-amd64.deb
wget -c https://generalarcade.com/gamepadtool/linux/gamepadtool_1.2_amd64.deb
wget https://download.virtualbox.org/virtualbox/6.1.18/virtualbox-6.1_6.1.18-142142~Ubuntu~eoan_amd64.deb
wget -c https://downloads.tuxfamily.org/godotengine/3.2.3/Godot_v3.2.3-stable_x11.64.zip
wget -c https://github.com/LMMS/lmms/releases/download/v1.2.2/lmms-1.2.2-linux-x86_64.AppImage
wget -c https://github.com/LMMS/lmms/releases/download/v1.3.0-alpha.1/lmms-1.3.0-alpha.1.33%2Bg4f74151-linux-x86_64.AppImage
wget -c https://download.virtualbox.org/virtualbox/6.1.18/Oracle_VM_VirtualBox_Extension_Pack-6.1.18.vbox-extpack


unzip Godot_v3.2.3-stable_x11.64.zip
chmod +x *.AppImage
rm Godot_v3.2.3-stable_x11.64.zip
sudo dpkg -i *.deb

cd ..
#
sudo apt-get install linux-image-liquorix-amd64 linux-headers-liquorix-amd64 -y
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key add -
sudo apt update && sudo apt install linux-xanmod -y

git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git
cd MangoHud
./build.sh build
./build.sh package
./build.sh install
cd ..
rm -rf MangoHud

git clone https://github.com/DadSchoorse/vkBasalt.git
cd vkBasalt
meson --buildtype=release --prefix=/usr builddir
ninja -C builddir install
cd ..
rm -rf vkBasalt

git clone https://github.com/benjamimgois/goverlay.git
cd goverlay
lazbuild -B goverlay.lpi
sudo mv goverlay /usr/games/
cd ..
rm -rf goverlay





