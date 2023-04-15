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

## ! conda init needs to follow pyenv init
# However we ran `conda config --set auto_activate_base false` in order to
# disable any automatic activation of conda environments, which means pyenv is
# still the default unless a conda environment is specifically activated.
# Reference: https://stackoverflow.com/a/58045984

## ! Important for VS Code
# It is important to disabled the inheritEnv setting in VS Code for the
# integrated terminal to work correctly with conda. 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
