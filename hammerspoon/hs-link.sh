#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P) 
# echo "dotfiles root: $DOTFILES_ROOT"

# DOTFILES_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

echo-colour blue "Symlinking hammerspoon/*.lua into ~/.hammerspoon"
# bin/link-file

# Intialise linker global variables
export overwrite_all=false backup_all=false skip_all=false

# Fetch all the `*.lua` files in the hammeerspoon directory
for src in $(find -H "$DOTFILES_ROOT/hammerspoon" -maxdepth 2 -name '*.lua')
do
    # Target destination example: 
    #   ~/.dotfiles/zsh/zshrc.symlink → ~/.zshrc
    dst="$HOME/.hammerspoon/$(basename "${src}")"
    $DOTFILES_ROOT/bin/link-file "$src" "$dst"
    # For more info, see "Parameter Expansion" in
    # https://linux.die.net/man/1/dash
done