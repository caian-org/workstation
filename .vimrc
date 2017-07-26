"--------------------------------------------------------------"
"           _                             __             _     "
"    __   _(_)_ __ ___  _ __ ___    ___  / _|   ___ __ _(_)    "
"    \ \ / / | '_ ` _ \| '__/ __|  / _ \| |_   / __/ _` | |    "
"     \ V /| | | | | | | | | (__  | (_) |  _| | (_| (_| | |    "
"      \_/ |_|_| |_| |_|_|  \___|  \___/|_|    \___\__,_|_|    "
"                                                              "
"--------------------------------------------------------------"

" ---------- BEGIN OF VUNDLE REQUIRED BLOCK ----------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ----------  END OF VUNDLE REQUIRED BLOCK  ----------


" ---------- BEGIN OF VUNDLE-MANAGED PLUGINS ----------

" -- vim-airline and themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" -- tabular
Plugin 'godlygeek/tabular'

" -- vim-markdown
Plugin 'plasticboy/vim-markdown'

" -- vim-live-latex-preview
Plugin 'ying17zi/vim-live-latex-preview'

" -- vim-raml
Plugin 'IN3D/vim-raml'

" -- api-blueprint
Plugin 'kylef/apiblueprint.vim'

" -- syntastic
Plugin 'vim-syntastic/syntastic'

" -- vimtex
Plugin 'lervag/vimtex'

" -- python-mode
"Plugin 'python-mode/python-mode'

" ----------  END OF VUNDLE-MANAGED PLUGINS  ----------


" ---------- BEGIN OF GENERAL SETTINGS ----------

" -- allow external clipboard
set clipboard=unname

" -- fixed numbers
set number
set relativenumber

" -- disable markdown folding (vim-markdown plugin)
let g:vim_markdown_folding_disabled = 1

" -- needed by vim-airline
set ttimeoutlen=10
set laststatus=2
let g:airline_powerline_fonts = 1

" -- alow code syntax
syntax on

" -- vim-airline theme
let g:airline_theme='base16_grayscale'


" ----------  END OF GENERAL SETTINGS  ----------


" ---------- BEGIN OF IDENTATION PREFERENCES ----------

autocmd Filetype python     setlocal tabstop=2
autocmd Filetype c          setlocal tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2

" ----------  END OF IDENTATION PREFERENCES  ----------

let tex_preview_always_autosave=0
