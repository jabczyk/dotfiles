#!/usr/bin/env zsh

# Basic commands
alias ls='ls -a --color=auto'
alias c='clear'
alias s='sudo'

alias '..'='cd ..'
alias '...'='cd ../..'
alias '....'='cd ../../..'

# Git
alias g='git'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gbr='git branch'
alias gp='git pull'
alias gpu='git push'
alias gpuo='git push origin'
alias gcane='git commit --amend --no-edit'
alias glo='git log --pretty=format:"%C(auto)%h %Cblue%an%C(auto)%d %s" -n 10'
alias glog='git log --pretty=format:"%C(auto)%h %Cblue%an%C(auto)%d %s" --graph'

# Node
alias y='yarn'
alias pn='pnpm'
alias tsn='npx ts-node'

# Rust
alias ca='cargo'

# Misc
# TODO: update to current version
alias psql="/opt/homebrew/Cellar/postgresql@16/16.3/bin/psql"
