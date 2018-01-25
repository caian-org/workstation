"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" =================
" PLUGIN MANAGEMENT
" =================

" PLUG AUTOMATIC INSTALLATION
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Starts plugin section
call plug#begin('~/.vim/plugged')



" UTILS
" ^^^^^

Plug 'godlygeek/tabular'        " Text filtering and alignment (required by vim-markdown)
Plug 'Townk/vim-autoclose'      " Auto-completion for open-close pair of characters
Plug 'scrooloose/nerdcommenter' " Comment functions
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " Filesystem explorer



" VISUAL & UI
" ^^^^^^^^^^^

Plug 'vim-airline/vim-airline'        " Status/tabline (mimics powerline)
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'dylanaraps/wal.vim'             " Load and uses pywal's colourscheme
Plug 'myusuf3/numbers.vim'            " Change the numbering based on the current mode
Plug 'lilydjwg/colorizer'             " Colorizes text in #RGB format (#BABACA, #123456, #F0D45E)
Plug 'itchyny/vim-cursorword'         " Underlines the word under the cursor



" DEV TOOLS
" ^^^^^^^^^
" Requires: <https://github.com/neovim/python-client>

Plug 'roxma/vim-hug-neovim-rpc' " Compatibility layer for Neovim's rpc client
Plug 'roxma/nvim-yarp'          " Yet Another Remote Plugin Framework for Neovim (required by deoplete)
Plug 'Shougo/deoplete.nvim'     " Async keyword completion system
Plug 'vim-syntastic/syntastic'  " Code syntax checker (mainly for MyPy)
Plug 'majutsushi/tagbar'        " Class outline viewer



" PYTHON IDE
" ^^^^^^^^^^
" Requires: <https://github.com/davidhalter/jedi>

Plug 'zchee/deoplete-jedi'     " Deoplete source for Python
Plug 'python-mode/python-mode' " Vim as a Python IDE (pylint, pydoc, highlight etc)



" VCS (VERSION CONTROL SYSTEM)
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Plug 'tpope/vim-fugitive'          " Git wrapper
Plug 'airblade/vim-gitgutter'      " Shows git diff in the gutter
Plug 'Xuyuanp/nerdtree-git-plugin' " Git status flags in NERDTree



" MARKDOWN
" ^^^^^^^^

Plug 'plasticboy/vim-markdown'            " Syntax highlight and other stuff
Plug 'JamshedVesuna/vim-markdown-preview' " Preview markdown files in the browser



" LATEX
" ^^^^^

Plug 'lervag/vimtex' " Provides support for writing LaTeX documents



" PRODUCTIVITY
" ^^^^^^^^^^^^

Plug 'vimwiki/vimwiki' " Task management, notes organization etc



" TO BE TESTED
" ^^^^^^^^^^^^

"Plug 'tpope/vim-surround'           " ...
"Plug 'itchyny/calendar.vim'         " ...
"Plug 'othree/html5.vim'             " ...
"Plug 'hail2u/vim-css3-syntax'       " ...
"Plug 'chrisbra/csv.vim'             " ...
"Plug 'dhruvasagar/vim-table-mode'   " ...
"Plug 'StanAngeloff/php.vim'         " ...
"Plug 'ekalinin/Dockerfile.vim'      " ...
"Plug 'PotatoesMaster/i3-vim-syntax' " ...
"Plug 'elzr/vim-json'                " ...
"Plug 'tmux-plugins/vim-tmux'        " ...
"Plug 'lambdalisue/vim-gista'        " ...
"Plug 'mbbill/undotree'              " ...
"Plug 'haya14busa/incsearch.vim'     " ...
"Plug 'terryma/vim-expand-region'    " ...
"Plug 'junegunn/goyo.vim'            " ...
"Plug 'junegunn/limelight.vim'       " ...
"Plug 'tpope/vim-unimpaired'         " ...
"Plug 'jelera/vim-javascript-syntax' " ...
"Plug 'mhinz/vim-startify'           " ...
"Plug 'Shougo/denite.nvim'           " ...
"Plug 'vim-utils/vim-troll-stopper'  " ...
"Plug 'vim-utils/vim-man'            " ...
"Plug 'w0rp/ale'                     " ...



" Ends plugin section
call plug#end()
