#!/usr/bin/env bash

set -e


# shellcheck disable=SC2292
if [ -z "${BASH_VERSION:-}" ]
then
  echo "Bash is required to interpret this script."
  exit 1
fi


OS_TARGET=""


macos_preinstall() {
    OS_TARGET="macos"

    # installs homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # installs required packages
    brew reinstall ansible git wget python3
}

get_playbook() {
    # downloads last release
    local LAST_TAG
    LAST_TAG="$(git ls-remote --tags https://github.com/caian-org/workstation | awk -F '/' '{print $3}' | tail -n 1)"

    cd /tmp
    wget "https://github.com/caian-org/workstation/archive/${LAST_TAG}.tar.gz"

    # extracts the release tarball
    tar xzf "${LAST_TAG}.tar.gz"

    cd workstation-*
}


case "$OSTYPE" in
    "darwin"*)    macos_preinstall ;;

    *)
        printf "unsupported platform %s" "$OSTYPE"
        exit 1
        ;;
esac

if [ -z "${SKIP_PLAYBOOK_DOWNLOAD:-}" ]; then get_playbook; fi

AP_EXTRA="$AP_EXTRA" make $OS_TARGET
