# pyenv
#
# Add pyenv init to your shell to enable shims and autocompletion. Please make
# sure eval "$(pyenv init -)" is placed toward the end of the shell
# configuration file since it manipulates PATH during the initialization.
#
# https://github.com/pyenv/pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

eval "$(pyenv init -)"
