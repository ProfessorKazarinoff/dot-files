#!/bin/bash

# setup_ubuntu.sh
# cd ~
# sudo apt-get -y install git
# git clone https://github.com/ProfessorKazarinoff/dot-files.git
# chmod u+x ~/dot-files/setup_ubuntu.sh
# ./dot-files/setup_ubuntu.sh

echo 'updating system'
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get clean
sudo apt-get -y autoremove

echo 'install dconf'
sudo apt-get -y install dconf-editor
echo 'load terminal profile'
if [ -f ~/dot-files/.terminal_profile.dconf ]; then
    dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/dot-files/.terminal_profile.dconf
fi

echo 'moving .bash_aliases'
if [ -f ~/dot-files/.bash_aliases ]; then
    mv ~/dot-files/.bash_aliases ~/.bash_aliases
source .bashrc

echo 'install obs'
sudo snap install obs-studio
sudo snap connect obs-studio:alsa
sudo snap connect obs-studio:audio-record
sudo snap connect obs-stchromiumudio:avahi-control
sudo snap connect obs-studio:camera
sudo snap connect obs-studio:jack1
sudo snap connect obs-studio:kernel-module-observe
sudo snap connect obs-studio:avahi-control
sudo snap connect obs-studio:kernel-module-observe
sudo apt -y install v4l2loopback-dkms v4l2loopback-utils
echo "options v4l2loopback devices=1 video_nr=13 card_label='OBS Virtual Camera'    exclusive_caps=1" | sudo tee /etc/modprobe.d/v4l2loopback.conf
echo "v4l2loopback" | sudo tee /etc/modules-load.d/v4l2loopback.conf
sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback devices=1 video_nr=13 card_label='OBS Virtual Camera' exclusive_caps=1
sudo snap connect obs-studio:removable-media
sudo snap connect obs-studio:raw-usb

echo 'install VSCode'
sudo snap install code

echo 'install Chromium'
sudo snap install chromium

echo 'install Zoom'
sudo snap install zoom-client

echo 'install Peek'
sudo apt-get -y install peek

echo 'install LaTeX (textlive-extra)'
sudo apt-get install -y texlive-latex-extra

echo 'install Pandoc'
sudo apt-get install -y pandoc

echo 'display day of the week in the date time display'
gsettings set org.gnome.desktop.interface clock-show-weekday true

echo 'install htop'
sudo apt-get install -y htop
