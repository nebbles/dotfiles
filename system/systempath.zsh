# Since this does not conform to `*/pathzsh` or `*/*.path.zsh` it will be loaded
# after the other path modifying scripts, but will still be loaded before
# oh-my-zsh.

# Paths to add
#   1. ./bin the bin folder of current working directory (for project folders)
#   2.
#   3.
#   4. $DOTFILES/bin to add this dotfiles binaries to path
#   5. the rest...
export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
