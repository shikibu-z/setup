#!/bin/sh
###
 # @Description : This is a script that install softwares
 # via package management utility. This file is for recode
 # ONLY! Do check before using any commands!
 # @Author      : Junyong Zhao (junyong@seas.upenn.edu)
 # @LastEditTime: 2021-07-13 11:51:23
###

## Ubuntu
sudo apt update && sudo apt upgrade && sudo apt autoremove

# command line tools
sudo apt install p7zip unrar ffmpeg youtube-dl wget curl

# zsh & oh-my-zsh
sudo apt install zsh
sudo chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# develop toolchain
# c / c++ toolchain
sudo apt install autoconf libtool
sudo apt install gcc gdb build-essential
# version control
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git tig python3-pip
pip3 install commitizen
echo export PATH=\$PATH:~/.local/bin/ >> .zshrc
# python
sudo apt install pylint autopep8

# latex
sudo apt install texlive-full

# gui softwares
sudo apt install baidunetdisk easytag libreoffice vlc qbittorrent vim-gtk3
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb
# download vscode manually...
