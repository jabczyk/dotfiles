#!/usr/bin/env zsh

DOTFILES="$HOME/.dotfiles"
CONFIG_HOME="$HOME/.config"

# Zsh
mkdir -p $CONFIG_HOME/zsh/lib
curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/lib/async_prompt.zsh -o "$CONFIG_HOME/zsh/lib/async_prompt.zsh"
curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/lib/git.zsh -o "$CONFIG_HOME/zsh/lib/git.zsh"

ln -s $DOTFILES/zsh/.zshenv ~/.zshenv
ln -s $DOTFILES/zsh/.zprofile "$CONFIG_HOME/zsh/.zprofile"
ln -s $DOTFILES/zsh/.zshrc "$CONFIG_HOME/zsh/.zshrc"
ln -s $DOTFILES/zsh/aliases.zsh "$CONFIG_HOME/zsh/aliases.zsh"
ln -s $DOTFILES/zsh/prompt_custom_setup.zsh "$CONFIG_HOME/zsh/prompt_custom_setup"

# Vim
# (Apparently doesn't support XDG_CONFIG_HOME)
ln -s "$DOTFILES/vim/.vimrc" ~/.vimrc