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

" Be iMproved
set nocompatible

" Disable swap files
set noswapfile

" Undo history file
set undofile
set undodir=~/.vim/undo

" [TAB] as completion key
set wildmenu
set wildmode=longest:full
set wildchar=<Tab>

" Automatic word wrapping
" <http://vim.wikia.com/wiki/Automatic_word_wrapping>
set formatoptions+=t
set textwidth=79

" Cursor line in the middle of screen
set scrolloff=999

" Using the system clipboard
set clipboard=unnamed

" Enables mouse scrolling instead of history buffer inside Tmux
" <http://vim.wikia.com/wiki/Using_the_mouse_for_Vim_in_an_xterm>
set mouse=a

" Makes BS (BackSpace) work as expected
" <https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode>
set backspace=indent,eol,start

" Reduces the delay when changing modes
set ttimeoutlen=10

" Remaps the 'leader' key
let mapleader=','
