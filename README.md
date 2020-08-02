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

Run the bootstrap script

```shell
cd ~/.dotfiles
script/bootstrap
```

The bootrapping works as follows

```
run script/bootstrap
  ↳ queries the user for their git author details (name & email)
  ↳ symlink every *.symlink file into the $HOME directory

(IN FUTURE)
  ↳ runs bin/dot ; a CL tool for the dotfiles repo
      ↳ runs the script/install
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
this folder. Use the standard naming structure (e.g. `*.zsh`) defined above at
it will automatically be sourced with your shell.

## structure

```
.
├── BetterTouchTool     See the dir/README for more information
├── README.md           This file!
├── bin                 Binaries that are added to path
├── brew                Homebrew related files
├── git                 git configuration, aliases, etc.
├── iterm               iTerm configuration
├── macos               macOS configuration
├── nvm                 node version manager
├── python              python, pyenv, poetry configuration and aliases
├── script
│   ├── bootstrap
│   ├── install
│   └── setup.sh
└── zsh
    ├── fpath.zsh
    ├── ohmyzsh.install.sh
    ├── ohmyzsh.zsh
    ├── ohmyzsh_custom
    │   ├── plugins
    │   │   └── poetry
    │   │       ├── README.md
    │   │       └── _poetry
    │   └── themes
    │       └── pygmalion_custom.zsh-theme
    └── zshrc.symlink
```

## acknowledgements

Big thanks to the following, where I drew from much of their source:

- [mathiasbynens](https://github.com/mathiasbynens/) for
  https://github.com/mathiasbynens/dotfiles/
- [holman](https://github.com/holman/) for https://github.com/holman/dotfiles

Other resources:

- https://gist.github.com/Moscarda/1abb40b39c6636d4f022cbfbd90cf890
- https://github.com/direnv/direnv
- https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet
