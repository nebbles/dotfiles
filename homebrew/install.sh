#!/bin/sh
#
# Install Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
#
# https://brew.sh

# Check for Homebrew
if test ! $(which brew)
then
    echo "  Installing Homebrew..."

    # Check OS, use relevant install command
    if test "$(uname -s)" = "Darwin" # macOS
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
    fi
else
    echo "brew is already installed"
fi
