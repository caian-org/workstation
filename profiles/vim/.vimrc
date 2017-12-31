"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/dots


" ===========
" VUNDLE INIT
" ===========

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on


" ========================
" PLUGINS & CONFIGURATIONS
" ========================

" STATUS BAR
" ^^^^^^^^^^

" Status/tabline (mimics powerline)
Plugin 'vim-airline/vim-airline'

" Themes for airline
Plugin 'vim-airline/vim-airline-themes'

" Always display the status line
set laststatus=2

" Reduces the delay when changing modes
set ttimeoutlen=10

" Sets the theme (uses the terminal colourscheme)
let g:airline_theme='base16color'

" Enable powerline symbols
let g:airline_powerline_fonts=1

" Show the tabline
let g:airline#extensions#tabline#enabled=1


" PYTHON IDE
" ^^^^^^^^^^
" The following plugins creates an ide-like behaviour in Vim for python
" development. The order in which the plugins are called makes difference
" to Vim. **DO NOT CHANGE IT!**

" Compatibility layer for Neovim's rpc client
Plugin 'roxma/vim-hug-neovim-rpc'

" Yet Another Remote Plugin Framework for Neovim
" (whatever it means... required by deoplete)
" Requires: <https://github.com/neovim/python-client>
Plugin 'roxma/nvim-yarp'

" Async keyword completion system
Plugin 'Shougo/deoplete.nvim'

" Deoplete source for Python
" Requires: <https://github.com/davidhalter/jedi>
Plugin 'zchee/deoplete-jedi'

" Code syntax checker
Plugin 'vim-syntastic/syntastic'

" Vim as a python ide (pylint, pydoc, highlight etc)
Plugin 'python-mode/python-mode'

" Enable Python 3 syntax checking
let g:pymode_python='python3'

" Triggers deoplete
call deoplete#enable()


" MARKDOWN EDITING
" ^^^^^^^^^^^^^^^^

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Syntax highlight and other stuff for markdown
Plugin 'plasticboy/vim-markdown'

" Disable folding
let g:vim_markdown_folding_disabled=0

" Preview markdown files in the browser
Plugin 'JamshedVesuna/vim-markdown-preview'

" Preview with github-flavoured markdown
let vim_markdown_preview_github=1


" UTILITIES
" ^^^^^^^^^

" Auto-completion for open-close pair of characters
Plugin 'Townk/vim-autoclose'

" Filesystem explorer
Plugin 'scrooloose/nerdtree'

" Git status flags in NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Comment functions
Plugin 'scrooloose/nerdcommenter'

" Absolute numbering in INSERT MODE
" Relative numbering in NORMAL MODE
Plugin 'myusuf3/numbers.vim'


" MISC
" ^^^^

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Provides support for writing LaTeX documents
Plugin 'lervag/vimtex'

" Text outlining and task management based on Emacs' Org-Mode
Plugin 'jceb/vim-orgmode'

" Load and uses the pywal's colourscheme	
Plugin 'dylanaraps/wal.vim'
colorscheme wal


" ===================
" GENERAL DEFINITIONS
" ===================

" Relative numbering
set number
set relativenumber

" Allows code syntax
syntax on

" Remaps the leaderkey
let mapleader=","


" WEIRD BEHAVIOUR
" ^^^^^^^^^^^^^^^
" This little section solves some weird behaviours of Vim.
" (from my stand of point)

" Enable mouse scrolling instead of history buffer inside Tmux
" <http://vim.wikia.com/wiki/Using_the_mouse_for_Vim_in_an_xterm>
set mouse=a

" Makes BS (BackSpace) work as expected
" <https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode>
set backspace=indent,eol,start


" INDENT PREFERENCES
" ^^^^^^^^^^^^^^^^^^

" Set TAB as 4 spaces wide
set tabstop=4

" Shift 4 spaces wide in reindent operations
set shiftwidth=4

" No TABs in source
set expandtab
