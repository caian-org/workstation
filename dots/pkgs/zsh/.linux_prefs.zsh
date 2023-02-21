#
#    ___
#   /\_ \    __
#   \//\ \  /\_\    ___   __  __  __  _
#     \ \ \ \/\ \ /' _ `\/\ \/\ \/\ \/'\
#   __ \_\ \_\ \ \/\ \/\ \ \ \_\ \/>  </
#  /\_\/\____\\ \_\ \_\ \_\ \____//\_/\_\
#  \/_/\/____/ \/_/\/_/\/_/\/___/ \//\/_/
#
# author : cai <hi@caian.org>
#   code : github.com/caian-org/dots

# ENVIRONMENT {{{

    # projects
    export PROJ_DIR="/run/media/$USER/warehouse/git"

    # For some bizarre reason, some KDE variables are not exported inside tmux
    # sessions. "xdg-open" is one the programs that relies on that variables
    # (namely, the "KDE_SESSION_VERSION") for working properly. When
    # KDE_SESSION_VERSION is not defined, xdg-open is unable to open URLs,
    # therefore commands like "gx" on vim doesn't work at all.

    # This is definitely a tmux issue, since when not using it, everything goes
    # as expected (independently of the terminal emulator used).

    # About KDE-specific environment varibles:
    # <https://userbase.kde.org/KDE_System_Administration/Environment_Variables>

    # The bug thread that saved me:
    # <https://bugs.launchpad.net/ubuntu/+source/xdg-utils/+bug/545044>
    export KDE_FULL_SESSION=true
    export KDE_SESSION_VERSION=5

# }}}
# ALIASES {{{

    # common directories
    alias gmed="cd /run/media/$USER"

    # dev
    alias init_nvm="source /usr/share/nvm/init-nvm.sh"

    # take content from STDOUT to clipboard
    # usage, e.g.: pwgen -cns 32 1 | to_clipboard
    alias to_clipboard="xclip -sel clipboard"

# }}}
# FUNCTIONS {{{

    # change wallpaper for all workspaces
    chwp() {
        dbus-send \
            --session \
            --dest=org.kde.plasmashell \
            --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript "string:
            var Desktops = desktops();
            for (i=0;i<Desktops.length;i++) {
                    d = Desktops[i];
                    d.wallpaperPlugin = 'org.kde.image';
                    d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
                    d.writeConfig('Image', 'file://$1');
            }"
    }

    # concatenate my Xresources and pywal's generated colorscheme and update
    # the database
    reload_xrdb() {
        cat "$HOME/.Xresources" "$HOME/.cache/wal/colors.Xresources" | xrdb -
    }

    # set the theme from an image
    chtm() {
        wal -n -i "$@"
        chwp "$(cat "$HOME/.cache/wal/wal")"
        reload_xrdb
    }

    # start a GUI program in fullscreen mode
    fsw() {
        kstart5 --fullscreen "$@"
    }

    # reload the xresources database before opening emacs
    org_mode() {
        reload_xrdb
        mjob emacs --fullscreen
    }

# }}}
# PATH {{{

    export PATH="$HOME/.local/bin:$PATH"

# }}}
