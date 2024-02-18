#!/usr/bin/env zsh
#
# Install oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh
# 26 Dec 2019

OH_MY_ZSH_DIR="$HOME/.oh-my-zsh"

if ! [ -d "$OH_MY_ZSH_DIR" ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "oh my zsh seems to already be installed at $OH_MY_ZSH_DIR"
fi
