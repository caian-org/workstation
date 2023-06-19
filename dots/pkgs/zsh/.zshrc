#
#                    __
#                   /\ \
#      ____     ____\ \ \___   _ __   ___
#     /\_ ,`\  /',__\\ \  _ `\/\`'__\/'___\
#   __\/_/  /_/\__, `\\ \ \ \ \ \ \//\ \__/
#  /\_\ /\____\/\____/ \ \_\ \_\ \_\\ \____\
#  \/_/ \/____/\/___/   \/_/\/_/\/_/ \/____/
#
# author : cai <hi@caian.org>
#   code : github.com/caian-org/workstation/dots


# GENERAL {{{

    # define zsh as hyphen insensitive
    HYPHEN_INSENSITIVE="true"

    # define zsh as case insensitive
    CASE_SENSITIVE="false"

    # enable command correction
    ENABLE_CORRECTION="true"

    # enable colors in ls
    DISABLE_LS_COLORS="false"

    # set neovim as default editor
    export EDITOR="nvim"

    # wow, much colors, so beautiful, 10/10
    export TERM="xterm-256color"

# }}}
# POWERLEVEL9K {{{

    # sets the way pl9k handles the font
    POWERLEVEL9K_MODE="awesome-fontconfig"

    # new line after prompt
    POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" : "

    # null segment separators
    POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
    POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""
    POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
    POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""

    # "dir_writable" segment
    POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
    POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="yellow"

    # "dir" segment
    POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
    POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
    POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
    POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

    # "command_execution_time" segment
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="clear"
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="green"

    # "vcs" segment (git)
    POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
    POWERLEVEL9K_VCS_CLEAN_BACKGROUND="clear"
    POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="magenta"
    POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
    POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="red"
    POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"

    # "status" segment
    POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
    POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
    POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
    POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

    # "virtualenv" segment
    POWERLEVEL9K_VIRTUALENV_BACKGROUND="clear"
    POWERLEVEL9K_VIRTUALENV_FOREGROUND="green"

    # print execution_time if threshold >= 3
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2

    # terminal prompt in new line
    POWERLEVEL9K_PROMPT_ON_NEWLINE=true

    # left elements/segments
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir_writable dir)

    # right elements/segments
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time virtualenv vcs)

# }}}
# OH-MY-ZSH {{{

    export ZSH="$HOME/.oh-my-zsh"

    # update frequency
    export UPDATE_ZSH_DAYS=7

    # theme definition
    ZSH_THEME="powerlevel10k/powerlevel10k"

    # plugin definition
    plugins=(
        git
        encode64
        vi-mode
        urltools
        python
        pip
        zsh-autosuggestions
        zsh-syntax-highlighting
    )

    # source oh-my-zsh
    source "$ZSH/oh-my-zsh.sh"

    # allows using option/alt-v to open vim and edit the shell command
    autoload edit-command-line
    zle -N edit-command-line
    bindkey -M vicmd v edit-command-line

# }}}
# FUNCTIONS {{{

    # create a job that doesn't depend on zsh
    mjob() {
        nohup "$@" & disown
    }

    # create a dir (with parents) and cd into them
    m() {
        mkdir -p -- "$1" &&
            cd -P -- "$1" || return
    }

    # open a new tmux session; attach if already exists
    t() {
        if ! tmux ls 2> /dev/null; then
            tmux -f "$HOME/.config/tmux/.tmux.conf"
        else
            tmux a
        fi
    }

#}}}
# PROGRAMS {{{

    VIRTUAL_ENV_DISABLE_PROMPT=1

# }}}
# OS-BASED {{{

    case "$OSTYPE" in
        linux-gnu)
            source "$HOME/.linux_prefs.zsh"
            ;;

        darwin*)
            source "$HOME/.macos_prefs.zsh"
            ;;
    esac

# }}}
# ALIASES {{{

    # programs
    alias b="bat"
    alias c="clear"
    alias v="nvim"
    alias ll="exa --long --header --sort type --reverse --git --group"
    alias l="ll --all"
    alias llt="ll --tree"
    alias lt="l --tree"

    # common actions
    alias uzc="source $HOME/.zshrc"

    # terraform
    alias mi="make init"
    alias mp="make plan"
    alias ma="make apply"

# }}}
# PATH {{{

    CUSTOM_BIN_PATH="$HOME/bin"
    GOLANG_PATH="$HOME/go/bin"

    export PATH="$CUSTOM_BIN_PATH:$GOLANG_PATH:/usr/local/sbin:$PATH"

    # remove duplicated path
    typeset -U path

# }}}
