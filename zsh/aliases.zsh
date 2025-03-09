#!/usr/bin/env zsh

# Basic commands
alias ls='ls -a --color=auto'
alias ll='ls -l'
alias c='clear'
alias s='sudo'
alias cd=z

alias '..'='cd ..'
alias '...'='cd ../..'
alias '....'='cd ../../..'

# Git
alias g='git'
alias ga='git add'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gb='git branch'
alias gbr=gb
alias gp='git pull'
alias gpu='git push'
alias gpuo='git push origin'
alias gcane='git commit --amend --no-edit'
alias glo='git log --pretty=format:"%C(auto)%h %Cblue%an%C(auto)%d %s" -n 10'
alias glog='git log --pretty=format:"%C(auto)%h %Cblue%an%C(auto)%d %s" --graph'
alias gclean='git branch -d $(git branch --merged=main | grep -v main) ; git fetch --prune'

# Node
alias y='yarn'
alias pn='pnpm'
alias tsn='npx ts-node'

# Rust
alias ca='cargo'

# Ding
alias play_ding="afplay /System/Library/Sounds/Glass.aiff"
alias ding="play_ding&"

# Misc
# TODO: update to current version
alias psql="/opt/homebrew/Cellar/postgresql@16/16.5/bin/psql"

# Kubernetes
alias k=kubectl
alias ar=argocd

# Shortcuts
alias dotfiles="vim ~/.dotfiles"
