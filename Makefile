SHELL = /bin/bash
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)

main:
	@echo-colour red "Please specify a target to run. Suggested:"
	@echo-colour red "    brew-packages 	- installs all packages"
	@echo-colour red "    cask-apps 		- installs all applications"

install-all:
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

nvm:
	is-executable nvm || nvm/install.sh
