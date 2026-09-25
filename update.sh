#!/bin/zsh

# Homebrew
brew update && brew outdated --greedy
brew upgrade --formula && brew upgrade --cask --greedy
brew autoremove && brew cleanup --scrub --prune=all

# Oh My Zsh
$ZSH/tools/upgrade.sh
