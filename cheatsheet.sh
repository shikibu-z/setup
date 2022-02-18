###
 # @Description : This is a command cheatsheet for my daily use of macOS.
 # @Author      : Junyong Zhao (junyong@seas.upenn.edu)
 # @LastEditTime: 2022-02-18 13:55:24
###

# brew update and upgrade
brew update && brew outdated --greedy
brew upgrade --formula && brew upgrade --cask --greedy
brew autoremove && brew cleanup -s && rm -frv $(brew --cache)

# extract archives
7z/unrar x/e [path] -p[password] [dir] # unrar requires [dir] pre-exist

# file permission
find . -type f -exec chmod 644 {} \; # all files should be rwxr--r--
find . -type d -exec chmod 755 {} \; # all directories should be  rwxr-xr-x

# launchctl service
launchctl unload -w /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*

# convert audio file
for i in *.wav; do ffmpeg -i "$i" -ar 48k -ac 2 -ab 320k -f mp3 "${i}.mp3"; done;

# cropping/resizing pictures for album cover
ffmpeg -i イラスト.jpg -vf scale=-1:500 cover-scale.jpg
ffmpeg -i cover-scale.jpg -vf crop=500:500 cover.jpg
