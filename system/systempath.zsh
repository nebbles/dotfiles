# Since this does not conform to `*/pathzsh` or `*/*.path.zsh` it will be loaded
# after the other path modifying scripts, but will still be loaded before
# oh-my-zsh.

# Paths to add (the order determines discovery order when calling executable)
#
#   1. ./bin            the bin folder local to any cwd (e.g. for projects)
#   2. $DOTFILES/bin    the bin executables of this dotfiles repo
#   3. /usr/local/bin
#   4. /usr/local/sbin
#   5. the rest...
export PATH="./bin:$DOTFILES/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
