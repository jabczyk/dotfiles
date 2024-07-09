#!/usr/bin/env zsh

# Config paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History
HISTFILE=$XDG_DATA_HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history
setopt hist_save_no_dups
setopt hist_ignore_space
