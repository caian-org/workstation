#!/bin/bash

# ---------- BEGIN ---------- 

# i3 directory
cp -u -v -r ~/.config/i3/ ~/Projects/dotfiles/.config/

# bumblebee theme & etc
cp -u -v ~/.config/bumblebee/themes/turing.json ~/Projects/dotfiles/.config/bumblebee/turing.json
cp -u -v ~/.config/bumblebee/bumblebee/modules/brightness.py ~/Projects/dotfiles/.config/bumblebee/brightness.py

# vim config file
cp -u -v ~/.vimrc ~/Projects/dotfiles/.vimrc

# termite directory
cp -u -v -r ~/.config/termite/ ~/Projects/dotfiles/.config/

# gtk-3.0 directory
cp -u -v -r ~/.config/gtk-3.0/ ~/Projects/dotfiles/.config/

# cheat directory
cp -u -v -r ~/.cheat ~/Projects/dotfiles/.cheat

# compton config file
cp -u -v ~/.config/compton.conf ~/Projects/dotfiles/.config/compton.conf

# Xresources config file
cp -u -v ~/.Xresources ~/Projects/dotfiles/.Xresources

# zsh config file
cp -u -v ~/.zshrc ~/Projects/dotfiles/.zshrc

# xbacklight
cp -u -v ~/Scripts/xbl-alt ~/Projects/dotfiles/xbl-alt

# rainbowstream
cp -u -v ~/.rainbow_config.json ~/Projects/dotfiles/.rainbow_config.json

# copy itself
cp -u -v ~/Projects/update-dotfiles.sh ~/Projects/dotfiles/update-dotfiles.sh

# ---------- END ----------
