#
#       ___ ___      __      ___    ___     ____
#     /' __` __`\  /'__`\   /'___\ / __`\  /',__\
#   __/\ \/\ \/\ \/\ \L\.\_/\ \__//\ \L\ \/\__, `\
#  /\_\ \_\ \_\ \_\ \__/.\_\ \____\ \____/\/\____/
#  \/_/\/_/\/_/\/_/\/__/\/_/\/____/\/___/  \/___/
#
# author : cai <hi@caian.org>
#   code : github.com/caian-org/dots


# ENVIRONMENT {{{

    # PROJ_DIR
    export PROJ_DIR="$HOME/Projs"

    export LC_ALL="en_GB.UTF-8"

# }}}
# ALIASES {{{

    # take content from STDOUT to clipboard
    # usage, e.g.: pwgen -cns 32 1 | to_clipboard
    alias to_clipboard="pbcopy"

    # poetry task execution with poe(thepoet)
    alias poe="poetry run poe"

# }}}
# FUNCTIONS {{{

    # change wallpaper for current workspace
    chwp() {
        osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$1\""
    }

    # set the theme from an image
    chtm() {
        wal -n -i "$@"
        chwp "$(cat "$HOME/.cache/wal/wal")"
    }

    # nvm severely slows down the shell startup; let's load nvm only when necessary
    init_nvm() {
        # loads nvm
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

        # loads shell completions
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    }

    init_rvm() {
        [ -s "$RVM_DIR/scripts/rvm" ] && \. "$RVM_DIR/scripts/rvm"
    }

    updeps() {
        brew update \
            && brew upgrade \
            && brew upgrade --cask \
            && nvim +PlugUpdate +qa \
            && nvim +PlugUpgrade +qa \
            && nvim +CocUpdateSync +qa
    }

    pb() {
        local pb_tmp_file
        local pb_url

        pb_tmp_file="/tmp/__pb_${RANDOM}"
        nvim "$pb_tmp_file"

        pb_url="$(cat $pb_tmp_file | nc termbin.com 9999)"
        printf "\npastebin @ %s\n" "$pb_url"
        printf "%s" "$pb_url" | xargs | to_clipboard

        rm "$pb_tmp_file"
    }

# }}}
# PATH {{{

    PYTHON_BIN="$HOME/Library/Python/3.9/bin"
    export PATH="$CUSTOM_PATH:$PYTHON_BIN:$PATH"

    # remove duplicated path
    typeset -U path

# }}}
