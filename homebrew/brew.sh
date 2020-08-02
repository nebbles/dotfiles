#!/bin/sh
#
# This script install what is considered the starter kit from brew, brew cask,
# and the Mac App Store.

###############################################################################
# brew command line tools                                                     #
###############################################################################

# TODO add a q/a to allow for install all or selective installing

brew install bat
brew install cask
brew install ffmpeg
brew install git
brew install mas
brew install htop
brew install imagemagick
brew install platformio
brew install pyenv
brew install rclone
brew install rsync
brew install speedtest-cli
brew install tmux
brew install tree
brew install yarn
# brew install figlet

###############################################################################
# brew cask applications                                                      #
###############################################################################

brew cask install browserosaurus 
brew cask install brave-browser 
brew cask install google-chrome 
brew cask install docker 
brew cask install macmediakeyforwarder 
brew cask install prusaslicer 
brew cask install qlcolorcode 
brew cask install qlimagesize 
brew cask install qlmarkdown 
brew cask install qlstephen 
brew cask install qlvideo 
brew cask install quicklook-json 
brew cask install steam 
brew cask install 1password 
brew cask install alfred
brew cask install visual-studio-code
brew cask install dropbox
brew cask install notion
brew cask install iterm2
brew cask install spotify
brew cask install setapp
brew cask install slack
brew cask install bettertouchtool
brew cask install google-backup-and-sync
# brew cask install sourcetree
brew cask install caprine
brew cask install whatsapp

###############################################################################
# Mac App Store (using 'mas', downloaded with brew)                           #
###############################################################################

mas install 1118136179 # AutoMute
#mas install 441258766 # Magnet # Not needed due to bettertouchtool
