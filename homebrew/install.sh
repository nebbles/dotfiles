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
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "brew is already installed"
fi
