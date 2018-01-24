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

" Sets the theme (uses the terminal colourscheme)
let g:airline_theme='base16color'

" Enables powerline symbols
let g:airline_powerline_fonts=1

" Shows the tabline
let g:airline#extensions#tabline#enabled=1

" Omits the path and only shows the filename in the tabline
let g:airline#extensions#tabline#fnamemod=':t'



" PYTHON-MODE
" ^^^^^^^^^^^

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



" VIM-MARKDOWN
" ^^^^^^^^^^^^

" Disable folding
let g:vim_markdown_folding_disabled=0

" Preview with GitHub-flavoured markdown
let vim_markdown_preview_github=1



" SYNTASTIC
" ^^^^^^^^^

" Embeds mypy syntax checking in flake8 and uses it as syntax checker for
" Python in syntastic.
" Requires: <https://github.com/python/mypy>,
"           <https://github.com/ambv/flake8-mypy>
let g:syntastic_python_checkers=['flake8']



" NERDTREE
" ^^^^^^^^

" Ignores Python's byte-compiled files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
