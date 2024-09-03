#!/usr/bin/env zsh

DOTFILES="$HOME/.dotfiles"

# Libs
for f in $ZDOTDIR/lib/*; do source $f; done

# Aliases
source $ZDOTDIR/aliases.zsh

for alias_file in $(find "$DOTFILES/projects" -type f -name 'aliases.sh'); do
  source "$alias_file"
done

# Prompt
fpath=($ZDOTDIR $fpath)
autoload -U promptinit && promptinit
prompt custom

# Completion
autoload -U compinit; compinit

# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# fzf
source <(fzf --zsh)

# Zoxide (z)
eval "$(zoxide init zsh)"
