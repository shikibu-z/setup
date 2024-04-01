# dock
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock show-recent-count -int 5

# press key repetition
defaults write -g ApplePressAndHoldEnabled -bool false

# automatic termination
defaults write -g NSDisableAutomaticTermination -bool yes

# power nap during sleep
sudo pmset -a powernap 0 ttyskeepawake 0

# reset/disable software gateway
sudo spctl --reset-default && sudo spctl --global-disable

# rebuild spotlight index
sudo mdutil -a -i off && sudo mdutil -a -E / && sudo mdutil -a -i on

# homebrew
brew update && brew outdated --greedy
brew upgrade --formula && brew upgrade --cask --greedy
brew autoremove && brew cleanup -s [--prune=all] # && rm -frv $(brew --cache)

# extract archives
unrar(7za) x [relative file path] -p[password] (-o)[dir]

# file permission and localization
cd ~ && sudo chmod -R g-rwx * .* && sudo chmod -R o-rwx * .*
cd / && sudo find . -name ".localized" -exec sudo rm -frv {} \;

# # chmod should be preferred
# find . -type f -exec chmod 600 {} \;
# find . -type d -exec chmod 700 {} \;

# convert audio file
for i in *.wav; do ffmpeg -i "$i" -ar 48k -ac 2 -ab 320k -f mp3 "${i}.mp3"; done;
