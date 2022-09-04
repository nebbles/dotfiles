# git aliases

alias glog='git log --graph --oneline --color --decorate --all'

alias ggraph="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

alias gpull='((git checkout develop && git pull origin develop) || true) && git checkout master && git pull origin master'

alias gfetch='BRANCH=$(git rev-parse --abbrev-ref HEAD) && git fetch --all --prune && git stash && gitpull && git checkout $BRANCH && git stash pop'

alias gs='git status'

alias gc='gitcommit'

# Fix for GPG
export GPG_TTY=$(tty)
