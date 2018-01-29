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

" `PLUG` AUTOINSTALL {{{


    if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


" }}}

call plug#begin('~/.vim/plugged')

" UTILITIES {{{


    Plug 'dhruvasagar/vim-table-mode' " Automatic table creator & formatter
    Plug 'itmammoth/doorboy.vim'      " Auto-completion for open-close pair of characters
    Plug 'vim-utils/vim-man'          " Man pages in Vim
    Plug 'junegunn/goyo.vim'          " Distraction-free writing
    Plug 'scrooloose/nerdcommenter'   " Commenting functions
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " Filesystem explorer
    Plug 'vim-utils/vim-troll-stopper', { 'for': 'troll' } " Detects ~unicode trolls~


" }}}
" INTERFACE {{{


    Plug 'mhinz/vim-startify'             " Start screen
    Plug 'vim-airline/vim-airline'        " Status bar/tabline
    Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline
    Plug 'myusuf3/numbers.vim'            " Change the numbering based on the current mode
    Plug 'lilydjwg/colorizer'             " Colorizes text in #RGB format (#BABACA, #123456, #F0D45E)
    Plug 'itchyny/vim-cursorword'         " Underlines the word under the cursor
    Plug 'dylanaraps/wal.vim'             " Pywal's colourscheme in Vim


" }}}
" DEV TOOLS {{{

" Requires: <https://github.com/neovim/python-client>


    Plug 'roxma/vim-hug-neovim-rpc' " Compatibility layer for Neovim's RPC client
    Plug 'roxma/nvim-yarp'          " Yet Another Remote Plugin Framework for Neovim (required by deoplete)
    Plug 'Shougo/deoplete.nvim'     " Async keyword completion system
    Plug 'vim-syntastic/syntastic'  " Code syntax checker (mainly for MyPy)
    Plug 'majutsushi/tagbar'        " Class outline viewer
    Plug 'ekalinin/Dockerfile.vim'  " Syntax highlight & snippets for Dockerfiles


" }}}
" PYTHON {{{

" Requires: <https://github.com/davidhalter/jedi>


    Plug 'zchee/deoplete-jedi'     " Deoplete source for Python
    Plug 'python-mode/python-mode' " Vim as a Python IDE (pylint, pydoc, highlight etc)


" }}}
" HIGHLIGHT {{{


    Plug 'PotatoesMaster/i3-vim-syntax' " i3wm config file highlight
    Plug 'tmux-plugins/vim-tmux'        " Tmux config file highlight


" }}}
" GIT {{{


    Plug 'tpope/vim-fugitive'          " Git wrapper
    Plug 'airblade/vim-gitgutter'      " Shows git diff in the gutter
    Plug 'Xuyuanp/nerdtree-git-plugin' " Git status flags in NERDTree


" }}}
" ORG MODE {{{


    Plug 'vim-scripts/utl.vim'     " URL-based hyperlink functions
    Plug 'tpope/vim-repeat'        " Repeat plugin mappings with dot
    Plug 'tpope/vim-speeddating'   " De/Increment dates, times and more
    Plug 'chrisbra/NrrwRgn'        " Emulation of Emacs' Narrow Region feature
    Plug 'vim-scripts/SyntaxRange' " Define a different filetype on regions of a buffer
    Plug 'mattn/calendar-vim'      " Calendar window
    Plug 'jceb/vim-orgmode'        " Text outlining and task management based on Emacs' Org-Mode


" }}}
" MARKDOWN {{{


    Plug 'godlygeek/tabular'                  " Text filtering and alignment
    Plug 'plasticboy/vim-markdown'            " Syntax highlight and other stuff
    Plug 'JamshedVesuna/vim-markdown-preview' " Preview markdown files in the browser


" }}}
" LATEX {{{


    Plug 'lervag/vimtex' " Provides support for LaTeX documents


"}}}
" MISC {{{


    Plug 'chrisbra/csv.vim'     " Filetype plugin for CSV files
    Plug 'itchyny/calendar.vim' " Calendar application


" }}}
" TO BE TESTED {{{


    "Plug 'tpope/vim-surround'           " ...
    "Plug 'othree/html5.vim'             " ...
    "Plug 'hail2u/vim-css3-syntax'       " ...
    "Plug 'StanAngeloff/php.vim'         " ...
    "Plug 'elzr/vim-json'                " ...
    "Plug 'lambdalisue/vim-gista'        " ...
    "Plug 'mbbill/undotree'              " ...
    "Plug 'haya14busa/incsearch.vim'     " ...
    "Plug 'terryma/vim-expand-region'    " ...
    "Plug 'junegunn/limelight.vim'       " ...
    "Plug 'tpope/vim-unimpaired'         " ...
    "Plug 'jelera/vim-javascript-syntax' " ...
    "Plug 'Shougo/denite.nvim'           " ...
    "Plug 'w0rp/ale'                     " ...


" }}}

call plug#end()



" ==================
" PLUGIN PREFERENCES
" ==================

" VIM-AIRLINE {{{


    let g:airline_theme='base16color'                   " Uses the terminal colourscheme
    let g:airline_powerline_fonts=1                     " Enables powerline symbols
    let g:airline#extensions#tabline#enabled=1          " Shows the tabline
    let g:airline#extensions#tabline#fnamemod=':t'      " Only shows the filename in tabline
    let g:airline#extensions#tabline#left_sep=' '       " Removes the `arrow` glyph on tab
    let g:airline#extensions#tabline#left_alt_sep = '|' " Removes the `arrow` glyph on the separator


" }}}
" PYTHON-MODE {{{

" Ref: <https://stackoverflow.com/questions/45990301/pep257-d212-and-d213-conflicts>


    let g:pymode_python='python3'      " Enables Python3.x syntax checking
    let g:pymode_folding=0             " Disables folding

    let g:pymode_quickfix_minheight=5  " Resizes the quickfix window
    let g:pymode_quickfix_maxheight=1

    let g:pymode_lint=1                " Enables the linter
    let g:pymode_lint_checkers=['pyflakes', 'pep8', 'pep257', 'pylint']

    let g:pymode_lint_ignore= ['D213'] " Ignores PEP257's error D213

    let g:pymode_lint_unmodified=1     " Triggers the linter (code checker) on every edit or save
    let g:pymode_lint_on_fly=1

    call deoplete#enable()             " Triggers deoplete (auto-completion)


" }}}
" VIM-MARKDOWN {{{


    let g:vim_markdown_folding_disabled=0 " Disable folding
    let vim_markdown_preview_github=1     " Preview with GitHub-flavoured markdown


" }}}
" SYNTASTIC {{{

" Requires: <https://github.com/python/mypy>,
"           <https://github.com/ambv/flake8-mypy>


    let g:syntastic_python_checkers=['flake8'] " MyPy syntax checking in syntastic


" }}}
" NERDTREE {{{


    " Ignores Python's byte-compiled files in NERDTree
    let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']


" }}}
