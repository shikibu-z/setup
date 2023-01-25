## Ubuntu
sudo apt update && sudo apt upgrade && sudo apt autoremove

# command line tools
sudo apt install p7zip-full unrar ffmpeg youtube-dl wget curl htop fonts-hack \
swapspace tlp

# zsh & oh-my-zsh
sudo apt install zsh
chsh -s /bin/zsh
# chsh -s /bin/zsh vagrant
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# develop toolchain
# c / c++ autotools
sudo apt install autoconf automake libtool
sudo apt install gcc gdb build-essential
# version control
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git tig python3-pip
pip3 install commitizen
# echo export PATH=\$PATH:~/.local/bin/ >> .zshrc
# python
sudo apt install pylint python3-autopep8

# latex
sudo apt install texlive-full

# gui softwares
sudo apt install baidunetdisk easytag libreoffice vlc qbittorrent vim-gtk3

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# skype
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb

# zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

# vscode
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update && sudo apt install code

# virualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update && sudo apt install virtualbox-6.1

# vagrant
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update && sudo apt install vagrant
