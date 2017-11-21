#-------------------------------------------------#
#             _              __             _     #
#     _______| |__     ___  / _|   ___ __ _(_)    #
#    |_  / __| '_ \   / _ \| |_   / __/ _` | |    #
#     / /\__ \ | | | | (_) |  _| | (_| (_| | |    #
#    /___|___/_| |_|  \___/|_|    \___\__,_|_|    #
#                                                 #
#-------------------------------------------------#


# ---------- BEGIN OF PATH DEFINITION ----------

# -- user's binary directory
USER_BIN_DIR=$HOME/bin:$HOME/.local/bin

# -- golang path
GO_PATH=/usr/local/go/bin

# -- vim live latex preview path
LIVE_LATEX_PREVIEW=/home/cai/.vim/bundle/vim-live-latex-preview/bin

# -- export the whole shebang
export PATH=$PATH:$USER_BIN_DIR:$GO_PATH:$LIVE_LATEX_PREVIEW

# ----------  END OF PATH DEFINITION  ----------


# ---------- BEGIN OF GENERAL DEFINITIONS ----------

# -- define zsh as hyphen insensitive
HYPHEN_INSENSITIVE="false"

# -- define zsh as case insensitive
CASE_SENSITIVE="false"

# -- enable command correction
ENABLE_CORRECTION="true"

# -- enable colors in ls (*nix command)
DISABLE_LS_COLORS="false"

# -- default editor
export EDITOR="vim"

# -- oh-my-zsh folder
export ZSH=/home/cai/.oh-my-zsh

# -- oh-my-zsh update regularity
export UPDATE_ZSH_DAYS=7

# -- forces ranger to use my own configuration
export RANGER_LOAD_DEFAULT_RC=false

# -- enable 256 colors
# (wow, much colors, so beautiful, 10/10)
export TERM="xterm-256color"

# -- powerlevel awesome fonts
source $HOME/.fonts/*.sh

# ----------  END OF GENERAL DEFINITIONS  ----------


# ---------- BEGIN OF POWERLEVEL9K THEME CUSTOMIZATION ----------

# -- define font
POWERLEVEL9K_MODE="awesome-fontconfig"

# -- add new line after the output
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" : "

# -- remove powerlevel segment separators
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""

# -- "history" segment
POWERLEVEL9K_HISTORY_BACKGROUND="clear"
POWERLEVEL9K_HISTORY_FOREGROUND="cyan"

# -- "dir_writable" segment
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="yellow"

# -- "dir" segment
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# -- "command_execution_time" segment"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="clear"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="green"

# -- "time" segment
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"

# -- "vcs" segment (aka git stuff)
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="magenta"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="red"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"

# -- "status" segment
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

# -- show "command_execution_time" after 3 seconds
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3

# -- path shortening
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# -- terminal prompt will appear in new line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# -- left elements/segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history status_joined dir_writable dir)

# -- right elements/segments
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time command_execution_time)

# ----------  ENF OF POWERLEVEL9K THEME CUSTOMIZATION  ----------


# ---------- BEGIN OF LESS COLOR SETTING ----------

export LESS_TERMCAP_mb=$(tput bold; tput setaf 1)
export LESS_TERMCAP_md=$(tput bold; tput setaf 4)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 0; tput setab 3)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

# ----------  END OF LESS COLOR SETTING ----------


# ---------- BEGIN OF OH-MY-ZSH GENERAL DEFINITIONS ----------

# -- theme definition
ZSH_THEME="powerlevel9k/powerlevel9k"

# -- set plugins
plugins=(git debian encode64)

# -- define oh-my-zsh's source
source $ZSH/oh-my-zsh.sh

# ----------  END OF OH-MY-ZSH GENERAL DEFINITIONS  ----------


# ---------- BEGIN OF ALIAS DECLARATION ----------

# -- tmux with custom-locate configuration file
alias tx="tmux -f $HOME/.config/tmux/.tmux.conf"

# -- kpcli with no history file
alias kpc="kpcx --histfile /dev/null"

# -- because nvim is to long...
alias v="nvim"

# -- hangups with custom-locate configuration file
alias hups="hangups --config $HOME/.config/hangups/hangups.conf"

# -- quick editing of i3's config
alias __vi3="vim $HOME/.config/i3/config"

# -- quick editing of zsh's config
alias __vzs="vim $HOME/.zshrc"

# -- quick editing of vim's config
alias __vvi="vim $HOME/.vimrc"

# -- quick editing of tmux's config
alias __vtm="vim $HOME/.config/tmux/.tmux.conf"

# -- quick access of dotfiles's dir
alias __gdo="cd $HOME/Documents/GitHub/dotfiles"

# ----------  END OF ALIAS DECLARATION  ----------

# -- runs pywal in every terminal
(wal -r -t &)
