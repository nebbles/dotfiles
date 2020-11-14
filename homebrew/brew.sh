#!/bin/sh
#
# This script install what is considered the starter kit from brew, brew cask,
# and the Mac App Store.

verbose_call () {
    INDENT_SIZE=$1
    shift;
    PREFIX=$(printf "%${INDENT_SIZE}s");
    echo "${PREFIX}→ $@"
    $@ 2>&1 | sed "s/^/$PREFIX  | /"
}

# TODO user prompt to for selective install?
# if [[ $1 = "" ]]
# then
# read -p 'Would you like to install dev tools? ' installDevTools
# fi

###############################################################################
# brew command line packages                                                  #
###############################################################################

echo "Preparing brew"
verbose_call 2 brew update

echo "Installing brew packages"

echo "  → Installing core packages"
verbose_call 4 brew install cask
verbose_call 4 brew install git
verbose_call 4 brew install mas
verbose_call 4 brew install rclone
verbose_call 4 brew install rsync
verbose_call 4 brew install tmux
verbose_call 4 brew install tree

echo "  → Installing extra utilities"
verbose_call 4 brew install bat
verbose_call 4 brew install ffmpeg
verbose_call 4 brew install highlight
verbose_call 4 brew install htop
verbose_call 4 brew install iftop
verbose_call 4 brew install imagemagick
verbose_call 4 brew install speedtest-cli

echo "  → Installing developer tools"
verbose_call 4 brew install balena-cli
verbose_call 4 brew install bazel
verbose_call 4 brew install gh
verbose_call 4 brew install go
verbose_call 4 brew install heroku/brew/heroku
verbose_call 4 brew install pipenv
verbose_call 4 brew install plantuml
verbose_call 4 brew install platformio
verbose_call 4 brew install pre-commit
verbose_call 4 brew install pyenv
verbose_call 4 brew install yarn

echo "Done with brew packages"

###############################################################################
# brew cask applications                                                      #
###############################################################################

echo "Installing cask applications"

echo "  → Installing primary applications"
verbose_call 4 brew cask install 1password 
verbose_call 4 brew cask install alfred
verbose_call 4 brew cask install bettertouchtool
verbose_call 4 brew cask install brave-browser 
verbose_call 4 brew cask install browserosaurus 
verbose_call 4 brew cask install carbon-copy-cloner
verbose_call 4 brew cask install google-backup-and-sync
verbose_call 4 brew cask install google-chrome 
verbose_call 4 brew cask install google-drive-file-stream
verbose_call 4 brew cask install iterm2
verbose_call 4 brew cask install setapp
verbose_call 4 brew cask install visual-studio-code

echo "  → Installing secondary applications"
verbose_call 4 brew cask install caprine
verbose_call 4 brew cask install discord
verbose_call 4 brew cask install dropbox
verbose_call 4 brew cask install fantastical
verbose_call 4 brew cask install figma
verbose_call 4 brew cask install ivpn
verbose_call 4 brew cask install mailmate
verbose_call 4 brew cask install notion
verbose_call 4 brew cask install plex-media-player
verbose_call 4 brew cask install shimo
verbose_call 4 brew cask install slack
verbose_call 4 brew cask install spotify
verbose_call 4 brew cask install steam 
verbose_call 4 brew cask install whatsapp
verbose_call 4 brew cask install zoomus

echo "  → Installing developer applications"
verbose_call 4 brew cask install adoptopenjdk8
verbose_call 4 brew cask install balenaetcher
verbose_call 4 brew cask install docker
verbose_call 4 brew cask install mongodb-compass
verbose_call 4 brew cask install ngrok
verbose_call 4 brew cask install postman
# verbose_call 4 brew cask install sourcetree
verbose_call 4 brew cask install vmware-fusion

echo "  → Installing professional tools"
verbose_call 4 brew cask install adobe-creative-cloud
verbose_call 4 brew cask install autodesk-fusion360
verbose_call 4 brew cask install prusaslicer 

echo "  → Installing tools applications"
verbose_call 4 brew cask install avibrazil-rdm
verbose_call 4 brew cask install handbrake
verbose_call 4 brew cask install hazel
verbose_call 4 brew cask install insomnia
verbose_call 4 brew cask install pdf-expert
verbose_call 4 brew cask install teamviewer
verbose_call 4 brew cask install vlc

echo "  → Installing utility applications"
verbose_call 4 brew cask install 3dconnexion
verbose_call 4 brew cask install logitech-options
verbose_call 4 brew cask install macmediakeyforwarder 
verbose_call 4 brew cask install qlcolorcode 
verbose_call 4 brew cask install qlimagesize 
verbose_call 4 brew cask install qlmarkdown 
verbose_call 4 brew cask install qlstephen 
verbose_call 4 brew cask install qlvideo 
verbose_call 4 brew cask install quicklook-json 

echo "Cleaning up brew"
verbose_call 2 brew cleanup

###############################################################################
# Mac App Store (using 'mas', downloaded with brew)                           #
###############################################################################

echo "Installing Mac App Store (mas) applications"

mas install 1118136179 # AutoMute
# mas install 441258766 # Magnet # Not needed due to bettertouchtool
