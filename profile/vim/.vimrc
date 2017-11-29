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

" ----------  END OF VUNDLE REQUIRED BLOCK  ----------


" ---------- BEGIN OF VUNDLE-MANAGED PLUGINS ----------

" powerline clone, but 100% vimscript
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" better file navigation
Plugin 'scrooloose/nerdtree'

" blabla
Plugin 'scrooloose/nerdcommenter'

" text alignment
Plugin 'godlygeek/tabular'

" syntax highlight for markdown
Plugin 'plasticboy/vim-markdown'

" -- vim-live-latex-preview
Plugin 'ying17zi/vim-live-latex-preview'

" -- syntastic
Plugin 'vim-syntastic/syntastic'

" -- vimtex
Plugin 'lervag/vimtex'

" easy preview of markdown files
Plugin 'JamshedVesuna/vim-markdown-preview'

" -- wal theme for vim
Plugin 'dylanaraps/wal.vim'

" -- python mode
Plugin 'python-mode/python-mode'

Plugin 'Shougo/deoplete.nvim'

Plugin 'davidhalter/jedi-vim'

Plugin 'myusuf3/numbers.vim'

Plugin 'motemen/git-vim'

Plugin 'Townk/vim-autoclose'

" ----------  END OF VUNDLE-MANAGED PLUGINS  ----------


" ---------- BEGIN OF GENERAL SETTINGS ----------

" fixed numbers
set number
set relativenumber

" alow code syntax
syntax on

" disable markdown folding (vim-markdown plugin)
let g:vim_markdown_folding_disabled=0

" needed by vim-airline
set ttimeoutlen=10
set laststatus=2
let g:airline_powerline_fonts=1

" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" enable tab line
let g:airline#extensions#tabline#enabled=1

" vim-airline theme
let g:airline_theme='base16color'

" disable autosave in tex
let tex_preview_always_autosave=0

" enable github-flavoured markdown with vim-markdown-preview
let vim_markdown_preview_github=1

" blabla
let mapleader=","

" blabla
let g:pymode_python = 'python3'

" -- pywal colorscheme inside vim
colorscheme wal

" ----------  END OF GENERAL SETTINGS  ----------


" ---------- BEGIN OF IDENTATION PREFERENCES ----------

autocmd FileType python     setlocal tabstop=2
autocmd FileType c          setlocal tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType sh         setlocal tabstop=2 shiftwidth=2
autocmd FileType html       setlocal tabstop=2 shiftwidth=2

" ----------  END OF IDENTATION PREFERENCES  ----------

