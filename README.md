# dotfiles

This is my dotfiles repository. Inspired by some great works, and in a drive to
further automate and understand elements of my terminal and machine, I have
built this out line by line whilst heavily relying on the resources found in
[acknowledgements](#acknowledgements). In a bid to make dotfiles more accessible
both to others, and my future self, I have endeavoured to verbosely comment the
code (mainly the shell scripts).

## install

Clone the repository

```shell
git clone https://github.com/nebbles/dotfiles.git ~/.dotfiles
```

Run the bootstrap script. It will:

1. setup git config (e.g. getting git author details from user)
2. install dotfile symlinks in home directory
3. run `dot --bootstrap`
   - which runs `make bootstrap`
     - check [the Makefile](./Makefile) for further dependencies

```shell
cd ~/.dotfiles
script/bootstrap
```

> Once the repo is configured, 1Password has been installed via homebrew, and
> the SSH configured, then change this repo to using SSH authentication to
> support pushing changes:
> `git remote set-url origin git@github.com:nebbles/dotfiles.git`

## makefile

The repository has a `Makefile` that runs a fair amount of the installation.
Currently though this job is split between the `Makefile` and other scripts. In
the future, the idea is to rely on `make` to handle all of the installation
side, as it is very easy to define dependencies. This ensures everything is
installed and configured in the correct order.

To get help on what targets are available through `make`, just run the command:

```
$ make

Please specify one or more targets to run. Suggested:
    brew-packages 	- installs all packages
    cask-apps 		- installs all applications
```

Whilst this obviously only works whilst the `cwd` is the dotfiles repo, you can
always access it from anywhere in the system via [the dot
command](#the-dot-command).

## the `dot` command

The repo has a `dot` command. Once the symlinks have been installed in the home
directory - _which includes zshrc_ - then this command will be available from
anywhere on the system. To get started, just run:

```shell
$ dot

dot -- dotfiles management

Usage: dot [options]

Options:
  -e, --edit          Open dotfiles directory for editing
  -h, --help          Show this help message and exit
  --set-macos         Set the defaults for macOS
  --brew              Install/update Homebrew on the system
  --install-topics    Run all install scripts in dot repo
  --bootstrap         Runs all installs and update functions
  make [targets]      Access to the underlying make file of repo
```

## topics

This repository inherits from the work of
[holman/dotfiles](https://github.com/holman/dotfiles). It uses a topical
structure, splitting up all the related installation, configuration, path
manipulation, completions, etc. which helps to keep the entire thing modular and
easier to fit with evolving requirements.

## configuration

The repository is split up into functional areas (topics) covering many
different tools and configuration within the OS. Most of these functional areas
will have a variety of different files associated with them.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected
  to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and
  is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` or ending `*.install.sh` is
  executed when you run `script/install`. To avoid being loaded automatically,
  its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your
  `$HOME`. This is so you can keep all of those versioned in your dotfiles but
  still keep those autoloaded files in your home directory. These get symlinked
  in when you run `script/bootstrap`.

### local configuration

For storing private local environment variables, use a folder called `local` in
the repo root. Use the standard naming structure (e.g. `*.zsh`) defined above at
it will automatically be sourced with new zsh shells.

## structure

_Generated with `tree .`_

```
.
├── BetterTouchTool     See the dir/README for more information
├── Makefile            Configures the make command
├── README.md           This file!
├── bin                 Executable commands that are added to path
├── git                 git configuration, aliases, etc.
├── heroku              heroku config
├── homebrew            Homebrew related files
├── iterm               iTerm configuration
├── local               local-only files, ignored by git (credentials, envs, etc.)
├── macos               macOS configuration, defaults, system preferences
├── nvm                 node version manager
├── python              python, pyenv, poetry configuration and aliases
├── rust                rust programming language
├── script
│   ├── bootstrap       the bootstrap script
│   └── install         the install script for calling all other install scripts
├── system              system path, global env
├── travis              travis ci config
└── zsh                 zsh config, zshrc, paths, ohmyzsh, plugins, themes
```

## acknowledgements

I owe much of what I learnt from pouring over the following repositories that
led me down many rabbit holes:

- [mathiasbynens](https://github.com/mathiasbynens/) for
  https://github.com/mathiasbynens/dotfiles/
- [holman](https://github.com/holman/) for https://github.com/holman/dotfiles
- [webpro](https://github.com/webpro/) for https://github.com/webpro/dotfiles/
  and https://github.com/webpro/awesome-dotfiles

Other resources:

- https://gist.github.com/Moscarda/1abb40b39c6636d4f022cbfbd90cf890
- https://github.com/direnv/direnv
- https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet

Makefiles:

- https://www.gnu.org/software/make/manual/make.html#Makefiles
