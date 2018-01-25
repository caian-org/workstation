"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" ==================
" PLUGIN PREFERENCES
" ==================

" AIRLINE (STATUS BAR)
" ^^^^^^^^^^^^^^^^^^^^

let g:airline_theme='base16color'                   " Uses the terminal colourscheme
let g:airline_powerline_fonts=1                     " Enables powerline symbols
let g:airline#extensions#tabline#enabled=1          " Shows the tabline
let g:airline#extensions#tabline#fnamemod=':t'      " Only shows the filename in tabline
let g:airline#extensions#tabline#left_sep=' '       " Removes the `arrow` glyph on tab
let g:airline#extensions#tabline#left_alt_sep = '|' " Removes the `arrow` glyph on the separator



" PYTHON-MODE
" ^^^^^^^^^^^
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



" VIM-MARKDOWN
" ^^^^^^^^^^^^

let g:vim_markdown_folding_disabled=0 " Disable folding
let vim_markdown_preview_github=1     " Preview with GitHub-flavoured markdown



" SYNTASTIC
" ^^^^^^^^^
" Requires: <https://github.com/python/mypy>,
"           <https://github.com/ambv/flake8-mypy>

let g:syntastic_python_checkers=['flake8'] " MyPy syntax checking in syntastic



" NERDTREE
" ^^^^^^^^

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$'] " Ignores Python's byte-compiled files in NERDTree
