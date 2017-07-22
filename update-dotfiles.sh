#!/bin/bash

# ---------- BEGIN ---------- 

# i3 directory
cp -u -v -r ~/.config/i3/ ~/Projects/dotfiles/.config/

# scripts directory
cp -u -v -r ~/Scripts/* ~/Projects/dotfiles/scripts

# termite directory
cp -u -v -r ~/.config/termite/ ~/Projects/dotfiles/.config/

# gtk-3.0 directory
cp -u -v -r ~/.config/gtk-3.0/ ~/Projects/dotfiles/.config/

# cheat directory
cp -u -v -r ~/.cheat ~/Projects/dotfiles/

# hangups directory
cp -u -v -r ~/.config/hangups ~/Projects/dotfiles/.config/

# bumblebee theme & custom modules
cp -u -v ~/.config/bumblebee/themes/turing.json ~/Projects/dotfiles/.config/bumblebee/turing.json
cp -u -v ~/.config/bumblebee/bumblebee/modules/brightness.py ~/Projects/dotfiles/.config/bumblebee/brightness.py

# vim config file
cp -u -v ~/.vimrc ~/Projects/dotfiles/.vimrc

# compton config file
cp -u -v ~/.config/compton.conf ~/Projects/dotfiles/.config/compton.conf

# Xresources config file
cp -u -v ~/.Xresources ~/Projects/dotfiles/.Xresources

# font config file
cp -u -v ~/.fonts.conf ~/Projects/dotfiles/.fonts.conf

# zsh config file
cp -u -v ~/.zshrc ~/Projects/dotfiles/.zshrc

# rainbowstream config file
cp -u -v ~/.rainbow_config.json ~/Projects/dotfiles/.rainbow_config.json

# the script itself
cp -u -v ~/Projects/update-dotfiles.sh ~/Projects/dotfiles/update-dotfiles.sh

# ---------- END ----------
