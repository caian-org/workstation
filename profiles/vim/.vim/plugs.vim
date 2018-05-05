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

" NEOVIM {{{
" Requires: <https://github.com/davidhalter/jedi>
"           <https://github.com/neovim/python-client>
"           <https://github.com/mdempsky/gocode>

    if has('nvim')
        " Async keyword completion system
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

        " Deoplete source...
        Plug 'Shougo/neco-vim'          " ...for VimL
        Plug 'zchee/deoplete-jedi'      " ...for Python
        Plug 'carlitux/deoplete-ternjs' " ...for JavaScript
        Plug 'zchee/deoplete-go', { 'do': 'make' } " ...for Go

        Plug 'w0rp/ale'           " Async Lint Engine
        Plug 'Shougo/denite.nvim' " Fuzzy finder + stuff
    endif

"}}}

" UI {{{


    Plug 'mhinz/vim-startify'      " Start screen
    Plug 'lilydjwg/colorizer'      " Colorizes text in #RGB format (#BABACA, #123456, #F0D45E)
    Plug 'itchyny/vim-cursorword'  " Underlines the word under the cursor
    Plug 'dylanaraps/wal.vim'      " Pywal's colourscheme in Vim
    Plug 'junegunn/limelight.vim'  " Hyperfocus-writing
    Plug 'junegunn/goyo.vim'       " Distraction-free writing
    Plug 'vim-airline/vim-airline' " Status bar/tabline
    Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline


" }}}
" UTILS {{{


    Plug 'itmammoth/doorboy.vim'    " Auto-completion for open-close pair of characters
    Plug 'godlygeek/tabular'        " Text filtering and alignment
    Plug 'hecal3/vim-leader-guide'  " Keymap list display
    Plug 'mbbill/undotree'          " The ultimate undo history visualizer for VIM
    Plug 'google/vim-searchindex'   " Display number of search matches & index of a current match
    Plug 'haya14busa/incsearch.vim' " Incremental searching
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " Filesystem explorer
    Plug 'vim-utils/vim-troll-stopper', { 'for': 'troll' } " Detects ~unicode trolls~


" }}}
" DEV {{{


    Plug 'Shougo/neosnippet.vim'      " Snippet support
    Plug 'Shougo/neosnippet-snippets' " Snippet source
    Plug 'majutsushi/tagbar'          " Class outline viewer
    Plug 'sheerun/vim-polyglot'       " Language collection pack
    Plug 'fatih/vim-go'               " IDE-like tools for Golang


" }}}
" VCS {{{


    Plug 'tpope/vim-fugitive'          " Git wrapper
    Plug 'airblade/vim-gitgutter'      " Shows git diff in the gutter
    Plug 'Xuyuanp/nerdtree-git-plugin' " Git status flags in NERDTree


" }}}
" ORG MODE {{{


    Plug 'vim-scripts/utl.vim'        , { 'for': 'org' } " URL-based hyperlink functions
    Plug 'tpope/vim-repeat'           , { 'for': 'org' } " Repeat plugin mappings with dot
    Plug 'tpope/vim-speeddating'      , { 'for': 'org' } " De/Increment dates, times and more
    Plug 'chrisbra/NrrwRgn'           , { 'for': 'org' } " Emulation of Emacs' Narrow Region feature
    Plug 'vim-scripts/SyntaxRange'    , { 'for': 'org' } " Define a different filetype on regions of a buffer
    Plug 'mattn/calendar-vim'         , { 'for': 'org' } " Calendar window
    Plug 'dhruvasagar/vim-table-mode' , { 'for': 'org' } " Automatic table creator & formatter
    Plug 'caianrais/vim-orgmode'      , { 'for': 'org' } " Text outlining and task management based on Emacs' Org-Mode


" }}}
" MARKUP {{{


    Plug 'plasticboy/vim-markdown' " Syntax highlight and other stuff
    Plug 'caianrais/rst.vim'       " Filetype plugin for RST
    Plug 'JamshedVesuna/vim-markdown-preview' " Preview markdown files in the browser


" }}}
" WEB {{{


    Plug 'elzr/vim-json'          " A better JSON for Vim
    Plug 'othree/html5.vim'       " Omnicomplete for HTML5
    Plug 'hail2u/vim-css3-syntax' " CSS syntax support
    Plug 'nikvdp/ejs-syntax'      " EJS syntax support
    Plug 'jelera/vim-javascript-syntax' " JavaScript syntax support


" }}}
" TO BE TESTED {{{


    " Plug 'lambdalisue/vim-gista'          " ...
    " Plug 'terryma/vim-expand-region'      " ...
    " Plug 'airodactyl/neovim-ranger'       " ...


" }}}

call plug#end()

" Triggers deoplete (auto-completion)
if has('nvim')
    call deoplete#enable()
endif



" ==================
" PLUGIN PREFERENCES
" ==================


" ALE {{{


    let g:ale_lint_on_text_changed = 'never'
    let b:ale_warn_about_trailing_whitespace = 0


" }}}
" VIM-AIRLINE {{{


    let g:airline_theme='base16color'                   " Uses the terminal colourscheme
    let g:airline_powerline_fonts=1                     " Enables powerline symbols
    let g:airline#extensions#tabline#enabled=1          " Shows the tabline
    let g:airline#extensions#tabline#fnamemod=':t'      " Only shows the filename in tabline
    let g:airline#extensions#tabline#left_sep=' '       " Removes the `arrow` glyph on tab
    let g:airline#extensions#tabline#left_alt_sep = '|' " Removes the `arrow` glyph on the separator


" }}}
" VIM-MARKDOWN {{{


    let g:vim_markdown_folding_disabled=0 " Disable folding
    let vim_markdown_preview_github=1     " Preview with GitHub-flavoured markdown


" }}}
" NERDTREE {{{


    " Ignores Python's byte-compiled files in NERDTree
    let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']


" }}}
