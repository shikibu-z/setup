# brew update and upgrade
brew update && brew outdated --greedy
brew upgrade --formula && brew upgrade --cask --greedy
brew autoremove && brew cleanup -s && rm -frv $(brew --cache)

# reset/disable software gateway, see "man spctl"
sudo spctl --reset-default && sudo spctl --global-disable

# pmset and powernap
sudo pmset -a powernap 0 ttyskeepawake 0
defaults write NSGlobalDomain NSAppSleepDisabled -bool YES

# extract archives
unrar(7za) x [relative file path] -p[password] (-o)[dir]

# file permission and finder localization
# all regular files should be rw-------
# all directories/executable files should be  rwx------
cd ~ && sudo chmod -R g-rwx * .* && sudo chmod -R o-rwx * .*
cd / && sudo find . -name ".localized" -exec sudo rm -frv {} \;
# chmod should be preferred
find . -type f -exec chmod 600 {} \;
find . -type d -exec chmod 700 {} \;

# launchctl service
launchctl unload -w /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*

# convert audio file
for i in *.wav; do ffmpeg -i "$i" -ar 48k -ac 2 -ab 320k -f mp3 "${i}.mp3"; done;

# cropping/resizing pictures for album cover
ffmpeg -i イラスト.jpg -vf scale=-1:500 cover-scale.jpg
ffmpeg -i cover-scale.jpg -vf crop=500:500 cover.jpg
