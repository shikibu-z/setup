#!/bin/zsh

password="$1"

# Homebrew
brew update --quiet && brew outdated
brew upgrade --formula && brew upgrade --cask
brew autoremove && brew cleanup -s

# Oh My Zsh
/Users/shikibu/.oh-my-zsh/tools/upgrade.sh

# LaTeX
echo "$password" | sudo -S tlmgr update --self
echo "$password" | sudo -S tlmgr update --all
echo "$password" | sudo -S tlmgr backup --all --clean=0

# File Permission
cd /Users/shikibu
echo "$password" | sudo -S chmod -R g-rwx * .*
echo "$password" | sudo -S chmod -R o-rwx * .*
