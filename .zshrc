#-------------------------------------------------#
#             _              __             _     #
#     _______| |__     ___  / _|   ___ __ _(_)    #
#    |_  / __| '_ \   / _ \| |_   / __/ _` | |    #
#     / /\__ \ | | | | (_) |  _| | (_| (_| | |    #
#    /___|___/_| |_|  \___/|_|    \___\__,_|_|    #
#                                                 #
#-------------------------------------------------#


# -- personal bin path in $HOME
MY_BIN_PATH=$HOME/bin

# -- go path
GO_PATH=/usr/local/go/bin

# -- dart path
DART_PATH=usr/lib/dart/bin

# -- vim live latex preview
LIVE_LATEX_PREVIEW=/home/cai/.vim/bundle/vim-live-latex-preview/bin

export PATH=$PATH:$MY_BIN_PATH:$GO_PATH:$DART_PATH:$LIVE_LATEX_PREVIEW

export ZSH=/home/cai/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
export RANGER_LOAD_DEFAULT_RC=false

# -- enable command correction
ENABLE_CORRECTION="true"

# -- is hyphen insensitive?
HYPHEN_INSENSITIVE="false"

# -- ls colors
DISABLE_LS_COLORS="false"

# -- is case sensitive?
CASE_SENSITIVE="false"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#POWERLEVEL9k_MODE='awesome-fontconfig'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time os_icon dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
