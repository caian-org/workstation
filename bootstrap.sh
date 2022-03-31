#!/usr/bin/env bash

set -e


macos_preinstall() {
    # installs homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # installs required packages
    brew reinstall ansible git wget
}

manjaro_preinstall() {
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
    if [ -z "$SKIP_PLAYBOOK_DOWNLOAD" ]; then return 0; fi

    # downloads last release
    LAST_TAG=$(git ls-remote --tags https://github.com/caian-org/workstation | awk -F '/' '{print $3}' | tail -n 1)
    wget "https://github.com/caian-org/workstation/archive/${LAST_TAG}.tar.gz"

    # extracts the release tarball
    tar xzf "${LAST_TAG}.tar.gz"

    cd workstation-*
}


# lets not polute the current directory
TMP_DIR="/tmp/ws-${RANDOM}"
mkdir -p "$TMP_DIR"
cd "$TMP_DIR"

# ...
case "$OSTYPE" in
    linux-gnu)
        manjaro_preinstall
        get_playbook
        make linux AP_EXTRA="$AP_EXTRA"
        ;;

    darwin*)
        macos_preinstall
        get_playbook
        make macos AP_EXTRA="$AP_EXTRA"
        ;;
esac
