#!/usr/bin/env zsh

# Libs
for f in $ZDOTDIR/lib/*; do source $f; done

# Aliases
source $ZDOTDIR/aliases.zsh

# Prompt
fpath=($ZDOTDIR $fpath)
# autoload -Uz prompt.zsh; prompt.zsh
autoload -U promptinit && promptinit
prompt custom

# Completion
autoload -U compinit; compinit
