#                    __
#                   /\ \
#      ____     ____\ \ \___   _ __   ___
#     /\_ ,`\  /',__\\ \  _ `\/\`'__\/'___\
#   __\/_/  /_/\__, `\\ \ \ \ \ \ \//\ \__/
#  /\_\ /\____\/\____/ \ \_\ \_\ \_\\ \____\
#  \/_/ \/____/\/___/   \/_/\/_/\/_/ \/____/
#
# author : cai <caianrais@protonmail.com>
#   code : github.com/caianrais/dots


# ---------- BEGIN OF PATH DEFINITION ----------

# muh binaries
USER_BIN_DIR=$HOME/bin:$HOME/.local/bin

# golang compiler
GO_PATH=/usr/local/go/bin

# vim's live latex
LIVE_LATEX_PREVIEW=$HOME/.vim/bundle/vim-live-latex-preview/bin

# export the whole shebang
export PATH=$PATH:$USER_BIN_DIR:$GO_PATH:$LIVE_LATEX_PREVIEW

# git&dots-related
export GITH_DIR=$HOME/Documents/GitHub
export STOW_PROFILES=$GITH_DIR/dots/profile

# ----------  END OF PATH DEFINITION  ----------


# ---------- BEGIN OF GENERAL DEFINITIONS ----------

# define zsh as hyphen insensitive
HYPHEN_INSENSITIVE="false"

# define zsh as case insensitive
CASE_SENSITIVE="false"

# enable command correction
ENABLE_CORRECTION="true"

# enable colors in ls
DISABLE_LS_COLORS="false"

# set vim as default editor
export EDITOR="vim"

# forces ranger to use my own conf
export RANGER_LOAD_DEFAULT_RC=false

# wow, much colors, so beautiful, 10/10
export TERM="xterm-256color"

# powerlevel awesome fonts
# github: gabrielelana/awesome-terminal-fonts
source $HOME/.fonts/*.sh

# ----------  END OF GENERAL DEFINITIONS  ----------


# ---------- BEGIN OF POWERLEVEL9K THEME CUSTOMIZATION ----------

# sets the way pl9k handles the font
POWERLEVEL9K_MODE="awesome-fontconfig"

# new line after prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" : "

# null segment separators
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""

# "history" segment
POWERLEVEL9K_HISTORY_BACKGROUND="clear"
POWERLEVEL9K_HISTORY_FOREGROUND="cyan"

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

# "time" segment
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"

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

# print execution_time if threshold >= 3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3

# shorten path
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

# terminal prompt in new line
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# left elements/segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history status_joined dir_writable dir)

# right elements/segments
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

export ZSH=$HOME/.oh-my-zsh

# update frequency
export UPDATE_ZSH_DAYS=7

# theme definition
ZSH_THEME="powerlevel9k/powerlevel9k"

# plugin definition
plugins=(git debian encode64)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# ----------  END OF OH-MY-ZSH GENERAL DEFINITIONS  ----------


# ---------- BEGIN OF ALIAS DECLARATION ----------

alias v="vim"
alias tx="tmux -f $HOME/.config/tmux/.tmux.conf"
alias kpc="kpcx --histfile /dev/null"
alias hups="hangups --config $HOME/.config/hangups/hangups.conf"

alias __vi3="v $STOW_PROFILES/i3/bin/program/rwal/templates/i3"
alias __vzsh="v $STOW_PROFILES/zsh/.zshrc"
alias __vvim="v $STOW_PROFILES/vim/.vimrc"
alias __vtmux="v $STOW_PROFILES/tmux/.config/tmux/.tmux.conf"
alias __gdots="cd $GITH_DIR/dots"
alias __gdora="cd $GITH_DIR/dora"
alias __ginit="cd $GITH_DIR/init"

# ----------  END OF ALIAS DECLARATION  ----------

# loads pywal's colourscheme
(wal -r -t &)
