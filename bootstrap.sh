#!/usr/bin/env bash

set -e

OS_TARGET=""


macos_preinstall() {
    OS_TARGET="macos"

    # installs homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # installs required packages
    brew reinstall ansible git wget python3
}

manjaro_preinstall() {
    OS_TARGET="linux"

    # updates everything
    sudo pacman -Syyu --noconfirm

    # installs required packages
    sudo pacman -S --noconfirm ansible git wget

    # installs yay (aur helper)
    (
        cd /tmp
        git clone https://aur.archlinux.org/yay.git

        cd yay
        makepkg -si --noconfirm
    )
}

get_playbook() {
    # downloads last release
    local LAST_TAG
    LAST_TAG="$(git ls-remote --tags https://github.com/caian-org/workstation | awk -F '/' '{print $3}' | tail -n 1)"

    wget "https://github.com/caian-org/workstation/archive/${LAST_TAG}.tar.gz"

    # extracts the release tarball
    tar xzf "${LAST_TAG}.tar.gz"

    cd workstation-*
}


case "$OSTYPE" in
    "linux-gnu"*) manjaro_preinstall ;;
    "darwin"*)    macos_preinstall ;;

    *)
        printf "unsupported platform %s" "$OSTYPE"
        exit 1
        ;;
esac

if [ -z "$SKIP_PLAYBOOK_DOWNLOAD" ]; then get_playbook; fi

AP_EXTRA="$AP_EXTRA" make $OS_TARGET
