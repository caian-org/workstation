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

" More faster & smoother
set ttyfast
set lazyredraw

" Default char encoding
set enc=utf-8

" Relative numbering
" (These configurations are later overwritten by 'numbers.vim' plugin)
set number
set relativenumber

" Highlights search results
set hlsearch

" Enables syntax highlight
syntax on

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

" Remaps the 'leader' key
let mapleader=','


" WEIRD BEHAVIOUR
" ^^^^^^^^^^^^^^^
" This little section solves some weird behaviours of Vim.
" (from my stand of point)

" Enables mouse scrolling instead of history buffer inside Tmux
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

" Spaces as [TAB]s
set expandtab



" ===========
" VUNDLE INIT
" ===========

filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on



" ================================
" PLUGINS & RELATED CONFIGURATIONS
" ================================

" STATUS BAR
" ^^^^^^^^^^

" Always display the status line
set laststatus=2

" Reduces the delay when changing modes
set ttimeoutlen=10

" Status/tabline (mimics powerline)
Plugin 'vim-airline/vim-airline'

" Themes for airline
Plugin 'vim-airline/vim-airline-themes'

" Sets the theme (uses the terminal colourscheme)
let g:airline_theme='base16color'

" Enables powerline symbols
let g:airline_powerline_fonts=1

" Shows the tabline
let g:airline#extensions#tabline#enabled=1

" Omits the path and only shows the filename in the tabline
let g:airline#extensions#tabline#fnamemod=':t'


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

" Code syntax checker
" Mainly for MyPy (Static Typing Checker)
Plugin 'vim-syntastic/syntastic'

" Class outline viewer
Plugin 'majutsushi/tagbar'

" Deoplete source for Python
" Requires: <https://github.com/davidhalter/jedi>
Plugin 'zchee/deoplete-jedi'

" Vim as a Python IDE (pylint, pydoc, highlight etc)
Plugin 'python-mode/python-mode'

" Embeds mypy syntax checking in flake8 and uses it as syntax checker for
" Python in syntastic.
" Requires: <https://github.com/python/mypy>,
"           <https://github.com/ambv/flake8-mypy>
let g:syntastic_python_checkers=['flake8']

" Disables folding
let g:pymode_folding=0

" Resizes the quickfix window
let g:pymode_quickfix_minheight=5
let g:pymode_quickfix_maxheight=10

" Enables Python3.x syntax checking
let g:pymode_python='python3'

" Enables the linter
let g:pymode_lint=1
let g:pymode_lint_checkers=['pyflakes', 'pep8', 'pep257', 'pylint']

" Ignores PEP257's error D213 because of...
" <https://stackoverflow.com/questions/45990301/pep257-d212-and-d213-conflicts>
let g:pymode_lint_ignore= ['D213']

" Triggers the linter (code checker) on every edit or save
let g:pymode_lint_unmodified=1
let g:pymode_lint_on_fly=1

" Triggers deoplete (auto-completion)
call deoplete#enable()


" VCS (VERSION CONTROL SYSTEM)
" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Shows git diff in the gutter
Plugin 'airblade/vim-gitgutter'


" MARKDOWN EDITING
" ^^^^^^^^^^^^^^^^

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Syntax highlight and other stuff
Plugin 'plasticboy/vim-markdown'

" Preview markdown files in the browser
Plugin 'JamshedVesuna/vim-markdown-preview'

" Disable folding
let g:vim_markdown_folding_disabled=0

" Preview with GitHub-flavoured markdown
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

" Ignores Python's byte-compiled files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']


" MISC
" ^^^^

" Provides support for writing LaTeX documents
Plugin 'lervag/vimtex'

" Text outlining and task management based on Emacs' Org-Mode
Plugin 'jceb/vim-orgmode'

" Colorizes text in #RGB format
" #BABACA, #123456, #F0D45E
" You should see the above text in colors!
Plugin 'lilydjwg/colorizer'

" Load and uses pywal's colourscheme
Plugin 'dylanaraps/wal.vim'
colorscheme wal



" ========
" MAPPINGS
" ========

" PLUGIN-RELATED
" ^^^^^^^^^^^^^^

" Open NERDTree
nnoremap <leader>d :NERDTreeToggle<CR>

" Open Tagbar
nnoremap <leader>t :TagbarToggle<CR>


" NAVIGATION
" ^^^^^^^^^^

" List buffers
nnoremap <leader>b :ls<CR>

" Previous buffer
nnoremap <leader>o :bp<CR>

" Next buffer
nnoremap <leader>p :bn<CR>

" Toggles search highlighting
nnoremap <leader>s :set hlsearch!<CR>

" Up and down by "line on screen" rather than "physical line"
nmap <C-j> gj
nmap <C-k> gk
imap <C-j> <C-o>gj
imap <C-k> <C-o>gk

" Navigation between window splits
nnoremap <C-Up> :wincmd k<CR>
nnoremap <C-Down> :wincmd j<CR>
nnoremap <C-Left> :wincmd h<CR>
nnoremap <C-Right> :wincmd l<CR>

inoremap <C-Up> <C-o>:wincmd k<CR>
inoremap <C-Down> <C-o>:wincmd j<CR>
inoremap <C-Left> <C-o>:wincmd h<CR>
inoremap <C-Right> <C-o>:wincmd l<CR>

