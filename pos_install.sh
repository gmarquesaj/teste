#!/bin/bash

# Instalando repositorios
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo add-apt-repository ppa:damentz/liquorix -y
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo add-apt-repository ppa:flexiondotorg/mangohud -y
sudo add-apt-repository ppa:numix/ppa -y

#
sudo apt install nvidia-driver-460 -y
sudo apt install nvidia-cuda-toolkit -y
sudo apt install gdebi -y
sudo apt install gedit -y
sudo apt install lutris -y
sudo apt install lazarus -y
sudo apt-get install goverlay -y
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
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.leinardi.gwe -y
flatpak install flathub nl.hjdskes.gcolor3 -y
flatpak install flathub org.gnome.Chess -y
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
sudo apt install ubuntu-restricted-extras -y
sudo apt install gnome-tweaks -y
sudo apt install rar unrar p7zip-full p7zip-rar -y
sudo apt install laptop-mode-tools -y
sudo apt install synaptic -y
sudo apt-get install numix-icon-theme-circle -y



#
sudo nvidia-xconfig --cool-bits=28
#
sudo swapoff /swapfile
sudo rm /swapfile
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
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
sudo apt-get install -f
cd ..
#
sudo apt-get install linux-image-liquorix-amd64 linux-headers-liquorix-amd64 -y
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list && wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key add -
sudo apt update && sudo apt install linux-xanmod -y
#
pip3 install cython
pip3 install virtualenv

#
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
sudo apt-get autoclean
sudo apt-get autoremove -y




