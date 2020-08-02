# git aliases

alias glog='git log --graph --oneline --color --decorate --all'

alias gpull='((git checkout develop && git pull origin develop) || true) && git checkout master && git pull origin master'

alias gfetch='BRANCH=$(git rev-parse --abbrev-ref HEAD) && git fetch --all --prune && git stash && gitpull && git checkout $BRANCH && git stash pop'

alias gs='git status'

alias gc='gitcommit'
