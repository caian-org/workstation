#
#       ___ ___      __      ___    ___     ____
#     /' __` __`\  /'__`\   /'___\ / __`\  /',__\
#   __/\ \/\ \/\ \/\ \L\.\_/\ \__//\ \L\ \/\__, `\
#  /\_\ \_\ \_\ \_\ \__/.\_\ \____\ \____/\/\____/
#  \/_/\/_/\/_/\/_/\/__/\/_/\/____/\/___/  \/___/
#
# author : cai <hi@caian.org>
#   code : github.com/caian-org/workstation/dots


# ALIASES {{{

    # take content from STDOUT to clipboard
    # usage, e.g.: pwgen -cns 32 1 | to_clipboard
    alias to_clipboard="pbcopy"

# }}}
# FUNCTIONS {{{

    updeps() {
        brew update \
            && brew upgrade \
            && brew upgrade --cask \
            && nvim +PlugUpdate +qa \
            && nvim +PlugUpgrade +qa \
            && nvim +CocUpdateSync +qa \
            && omz update
    }

# }}}
# HOMEBREW {{{

    eval "$(/opt/homebrew/bin/brew shellenv)"

# }}}
# ASDF {{{

    . $(brew --prefix asdf)/libexec/asdf.sh

# }}}

# allow GPG to access the current TTY when prompting for passphrases
export GPG_TTY=$(tty)
