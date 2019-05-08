#!/usr/bin/env bash

set -e

# updates everything
sudo pacman -Syyu --noconfirm

# installs required packages
sudo pacman -S --noconfirm ansible git wget pwgen

# lets not polute the current directory
tmp_dir=$(pwgen -cns 16 1)
cd /tmp
mkdir "${tmp_dir}"
cd "${tmp_dir}"

# downloads last release
last_tag=$(git ls-remote --tags https://github.com/caian-org/workstation | awk -F '/' '{print $3}' | tail -n 1)
wget "https://github.com/caian-org/workstation/archive/${last_tag}.tar.gz"

# installs yay (aur helper)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

# extracts the release tarball
tar xzf "${last_tag}.tar.gz"

# runs the ansible playbook
cd workstation-*
ansible-playbook --ask-become-pass -i ansible/hosts ansible/workstation.yml
