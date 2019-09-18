#!/usr/bin/env bash

set -e


preinstall_macos() {
    # installs homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    # installs required packages
    brew reinstall ansible git wget
}

preinstall_manjaro() {
    # updates everything
    sudo pacman -Syyu --noconfirm

    # installs required packages
    sudo pacman -S --noconfirm ansible git wget

    # installs yay (aur helper)
    git clone https://aur.archlinux.org/yay.git
    (
        cd yay
        makepkg -si --noconfirm
    )
}

get_playbook() {
    # downloads last release
    last_tag=$(git ls-remote --tags https://github.com/caian-org/workstation | awk -F '/' '{print $3}' | tail -n 1)
    wget "https://github.com/caian-org/workstation/archive/${last_tag}.tar.gz"

    # extracts the release tarball
    tar xzf "${last_tag}.tar.gz"

    cd workstation-*
}


# lets not polute the current directory
tmp_dir="/tmp/ws-${RANDOM}"
mkdir -p "$tmp_dir"
cd "$tmp_dir"

# ...
case "$OSTYPE" in
    linux-gnu)
        preinstall_manjaro
        get_playbook
        make linux
        ;;

    darwin*)
        preinstall_macos
        get_playbook
        make macos
        ;;
esac
