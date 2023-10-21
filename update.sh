#!/bin/zsh

password="$1"

# Homebrew
brew update --quiet && brew outdated --greedy
brew upgrade --formula && brew upgrade --cask --greedy
brew autoremove && brew cleanup -s --prune=all

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
