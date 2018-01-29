"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" ===================
" GENERAL DEFINITIONS
" ===================
" Ref: <http://vim.wikia.com/wiki/Using_the_mouse_for_Vim_in_an_xterm>
"      <https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode>
"      <http://vim.wikia.com/wiki/Automatic_word_wrapping>

set nocompatible               " Be iMproved
set noswapfile                 " Disable swap files
set scrolloff=999              " Cursor line in the middle of screen
set clipboard=unnamed          " Using the system clipboard
set mouse=a                    " Enables mouse scrolling instead of history buffer inside Tmux
set backspace=indent,eol,start " Makes BS (BackSpace) work as expected
set ttimeoutlen=10             " Reduces the delay when changing modes
set showcmd                    " Shows the entered command & number of selected lines (visual line & block)

set undofile                   " Undo history file
set undodir=~/.vim/undo

set wildmenu                   " [TAB] as completion key
set wildmode=longest:full
set wildchar=<Tab>

set formatoptions+=t           " Automatic word wrapping
set textwidth=79

let mapleader=','              " Remaps the 'leader' key
