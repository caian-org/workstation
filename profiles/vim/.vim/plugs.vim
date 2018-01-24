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

" Text filtering and alignment
" (required by vim-markdown)
Plug 'godlygeek/tabular'

" Auto-completion for open-close pair of characters
Plug 'Townk/vim-autoclose'

" Filesystem explorer
Plug 'scrooloose/nerdtree'

" Comment functions
Plug 'scrooloose/nerdcommenter'



" VISUAL & UI
" ^^^^^^^^^^^

" Status/tabline (mimics powerline)
Plug 'vim-airline/vim-airline'

" Themes for airline
Plug 'vim-airline/vim-airline-themes'

" Load and uses pywal's colourscheme
Plug 'dylanaraps/wal.vim'

" Absolute numbering in INSERT MODE
" Relative numbering in NORMAL MODE
Plug 'myusuf3/numbers.vim'

" Colorizes text in #RGB format
" #BABACA, #123456, #F0D45E
" You should see the above text in colors!
Plug 'lilydjwg/colorizer'

" Underlines the word under the cursor
Plug 'itchyny/vim-cursorword'



" DEV TOOLS
" ^^^^^^^^^

" Compatibility layer for Neovim's rpc client
Plug 'roxma/vim-hug-neovim-rpc'

" Yet Another Remote Plugin Framework for Neovim
" (whatever it means... required by deoplete)
" Requires: <https://github.com/neovim/python-client>
Plug 'roxma/nvim-yarp'

" Async keyword completion system
Plug 'Shougo/deoplete.nvim'

" Code syntax checker
" Mainly for MyPy (Static Typing Checker)
Plug 'vim-syntastic/syntastic'

" Class outline viewer
Plug 'majutsushi/tagbar'



" PYTHON IDE
" ^^^^^^^^^^

" Deoplete source for Python
" Requires: <https://github.com/davidhalter/jedi>
Plug 'zchee/deoplete-jedi'

" Vim as a Python IDE (pylint, pydoc, highlight etc)
Plug 'python-mode/python-mode'



" VCS (VERSION CONTROL SYSTEM)
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" Git wrapper
Plug 'tpope/vim-fugitive'

" Shows git diff in the gutter
Plug 'airblade/vim-gitgutter'

" Git status flags in NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'



" MARKDOWN
" ^^^^^^^^

" Syntax highlight and other stuff
Plug 'plasticboy/vim-markdown'

" Preview markdown files in the browser
Plug 'JamshedVesuna/vim-markdown-preview'



" LATEX
" ^^^^^

" Provides support for writing LaTeX documents
Plug 'lervag/vimtex'



" PRODUCTIVITY
" ^^^^^^^^^^^^

" Text outlining and task management based on Emacs' Org-Mode
Plug 'vimwiki/vimwiki'



" Ends plugin section
call plug#end()
