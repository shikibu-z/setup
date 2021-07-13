###
 # @Description : This is a command cheatsheet for my daily use.
 # @Author      : Junyong Zhao (junyong@seas.upenn.edu)
 # @LastEditTime: 2021-07-13 11:57:04
###

# file permission
find . -type f -exec chmod 644 {} \; # all files should be rwxr--r--
find . -type d -exec chmod 755 {} \; # all directories should be  rwxr-xr-x

# brew cleanup
brew --cache | xargs rm -rfv

# control vpn
launchctl unload -w /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*

# convert audio file
for i in *.wav; do ffmpeg -i "$i" -ar 48k -ac 2 -ab 320k -f mp3 "${i}.mp3"; done;
