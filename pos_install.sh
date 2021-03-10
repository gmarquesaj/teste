#!/bin/bash
sudo add-apt-repository ppa:lutris-team/lutris
sudo add-apt-repository ppa:damentz/liquorix
sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo ubuntu-drivers autoinstall -y
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
sudo apt install git -y
sudo apt install nodejs -y
sudo apt install flatpak -y
sudo apt-get install sqlite3 -y
sudo apt-get install libsqlite3-dev -y
sudo apt-get install sqlitebrowser -y
sudo apt install npm -y
sudo apt install winff -y
sudo apt install gamemode -y
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
mkdir pg
cd pg
wget -c https://www.tonelib.net/download/ToneLib-GFX-amd64.deb
cd ..

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





