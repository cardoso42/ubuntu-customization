#!/bin/bash

# Creating installation log
cd ~
touch script_log.txt

# Updating system
sudo apt update -y > ~/script_log.txt
sudo apt upgrade -y > ~/script_log.txt
echo "System up to date!"

# Set dark mode
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-dark'
echo "Dark mode selected!"

# Set new wallpaper
cd ~
cd Pictures && mkdir Wallpapers
cd Wallpapers
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1-bJYlG1eJcQeMeBRwVtvm4VGvuZo5vWn' -O wallpaper.png > ~/script_log.txt
gsettings set org.gnome.desktop.background picture-uri file:///home/lucascardoso910/Pictures/Wallpapers/wallpaper.png
echo "New wallpaper set!"

# Installing with snap
sudo snap install discord && echo "Discord installed!" > ~/script_log.txt
sudo snap install drive && echo "Drive for terminal installed!" > ~/script_log.txt
sudo snap install spotify && echo "Spotify installed!" > ~/script_log.txt
sudo snap install --classic code && echo "VSCode installed!" > ~/script_log.txt
sudo snap install onlyoffice-desktopeditors && echo "OnlyOffice installed!" > ~/script_log.txt

# Installing Google Chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb > ~/script_log.txt
rm google-chrome-stable_current_amd64.deb

# Installing Stremio
cd ~/Downloads
wget https://dl.strem.io/shell-linux/v4.4.137/stremio_4.4.137-1_amd64.deb
sudo apt install ./stremio_4.4.137-1_amd64.deb > ~/script_log.txt
rm ./stremio_4.4.137-1_amd64.deb

# Installing with apt
sudo apt install -y gcc > ~/script_log.txt && echo "gcc installed!"
sudo apt install -y g++ > ~/script_log.txt && echo "g++ installed!"
sudo apt install -y python3-pip > ~/script_log.txt && echo "pip installed!"
sudo apt install -y telegram-desktop > ~/script_log.txt && echo "Telegram installed!"
sudo apt install -y calibre > ~/script_log.txt && echo "Calibre installed!"
sudo apt install -y vim > ~/script_log.txt && echo "Vim installed!"
sudo apt install -y kolourpaint > ~/script_log.txt && echo "Kolourpaint installed!"
sudo apt install -y git > ~/script_log.txt && echo "Git installed!"
sudo apt install -y qbittorrent > ~/script_log.txt && echo "qBitTorrent installed!"
sudo apt install -y idle > ~/script_log.txt && echo "idle installed!"

# Removing
sudo apt-get remove --purge -y libreoffice* > ~/script_log.txt && echo "LibreOffice removed!"
sudo apt-get clean > ~/script_log.txt 
sudo apt-get autoremove -y > ~/script_log.txt 
echo "System clean!"

# Creating google_drive folders
cd ~
mkdir google_drive
cd google_drive
mkdir lucas.cardoso.santos@usp.br
mkdir lucascardoso910@gmail.com
echo "google_drive folders created!"

# Creating git folders
cd ~
mkdir github_projects
cd github_projects
git clone https://github.com/DOS-Desenvolvimento-Open-Source/calculadora.git > ~/script_log.txt
echo "git folders created and cloned!"

# Creating .bash_aliases file
cd ~
touch .bash_aliases
python3 create_bash_aliases.py > ~/script_log.txt
echo "Aliases created!"

# Final warnings!
echo "You should initialize your google_drive folders!"
echo "Install crontab!"
