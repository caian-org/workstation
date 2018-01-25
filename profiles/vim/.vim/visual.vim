"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" =======================
" VISUAL & USER INTERFACE
" =======================

syntax on                 " Enables syntax highlight
set enc=utf8              " Default char encoding
set hlsearch              " Highlights search results
set tabstop=4             " Set TAB as 4 spaces wide
set shiftwidth=4          " Shift 4 spaces wide in reindent operations
set expandtab             " Spaces as [TAB]s
set laststatus=2          " Always display the status line
colorscheme wal           " Loads Pywal's colourscheme
hi VertSplit cterm=NONE   " Supress the current colour scheme in vertical split line
hi VertSplit ctermfg=237  " Sets the vertical line foreground color to 237
hi VertSplit ctermbg=NONE " Nulls the vertical line background color
set fillchars=vert:│      " Makes a continuous line with a special UTF-8 char

set ttyfast               " More faster & smoother
set lazyredraw

set number                " Relative numbering
set relativenumber
