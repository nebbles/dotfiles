SHELL = /bin/bash
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)

# We declare that we don't mean 'macos' the directory
.PHONY: brew macos bootstrap setup

all: help

help:
	@echo "dotfiles Makefile"
	@echo ""
	@echo "Usage: make [targets]"
	@echo ""
	@echo "Please specify one or more targets to run."
	@echo "Suggested:"
	@echo "    brew-packages      - installs all packages"
	@echo "    cask-apps          - installs all applications"
	@echo "    cask-apps-upgrade  - upgrades all applications"
	@echo "    hammerspoon        - links all hammerspoon .lua files to config"
	@echo "    install-scripts    - installs all 'install.sh' scripts"

install-scripts:
	@echo-colour blue "Running all install scripts"
	script/install

brew:
	is-executable brew || homebrew/install.sh

brew-packages: brew
	@echo-colour blue "installing packages from Brewfile (won't upgrade)"
	brew bundle --no-upgrade --no-lock --file homebrew/Brewfile

cask-apps: brew
	@echo-colour blue "installing applications from Caskfile (won't upgrade)"
	brew bundle --no-upgrade --no-lock --file homebrew/Caskfile

cask-apps-upgrade: brew
	@echo-colour blue "installing & upgrading applications from Caskfile"
	brew bundle --verbose --no-lock --file homebrew/Caskfile

# Set macOS defaults
macos:
	@echo "Setting macOS defaults is not yet supported"
    # $DOTFILES/macos/set-defaults.sh

setup: macos brew install-scripts
	@echo "Setup complete"

bootstrap: macos install-scripts brew
	@echo "Bootstrapping complete"

hammerspoon-install: brew
	brew list --cask hammerspoon > /dev/null || brew cask install hammerspoon

hammerspoon: hammerspoon-install
	hammerspoon/hs-link.sh
