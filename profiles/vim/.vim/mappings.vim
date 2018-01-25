"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" ============
" KEY MAPPINGS
" ============

" GENERAL
" ^^^^^^^

" Toggles search highlighting
nnoremap <Leader>s :set hlsearch!<CR>

" Up and down by "line on screen" rather than "physical line"
nmap <C-j> gj
nmap <C-k> gk

imap <C-j> <C-o>gj
imap <C-k> <C-o>gk

" Copy selected text to system clipboard (requires gvim)
vnoremap <C-c> "+y



" BUFFERS
" ^^^^^^^

" New horizontal empty
nnoremap <Leader>bh :new<CR>

" New vertical empty
nnoremap <Leader>bv :vnew<CR>

" List all
nnoremap <Leader>bl :ls<CR>

" Go to previous
nnoremap <C-h> :bp<CR>
inoremap <C-h> <Esc>:bp<CR>

" Go to next
nnoremap <C-l> :bn<CR>
inoremap <C-l> <Esc>:bn<CR>



" WINDOWS
" ^^^^^^^

nnoremap <C-Up> :wincmd k<CR>
inoremap <C-Up> <C-o>:wincmd k<CR>

nnoremap <C-Down> :wincmd j<CR>
inoremap <C-Down> <C-o>:wincmd j<CR>

nnoremap <C-Left> :wincmd h<CR>
inoremap <C-Left> <C-o>:wincmd h<CR>

nnoremap <C-Right> :wincmd l<CR>
inoremap <C-Right> <C-o>:wincmd l<CR>



" PLUGIN-RELATED
" ^^^^^^^^^^^^^^

" Open NERDTree
nnoremap <F3> :NERDTreeToggle<CR>
inoremap <F3> <Esc>:NERDTreeToggle<CR>a

" Open Tagbar
nnoremap <F4> :TagbarToggle<CR>
inoremap <F4> <Esc>:TagbarToggle<CR>a

" Open Tagbar
nnoremap <F9> :Goyo<CR>
inoremap <F9> <Esc>:Goyo<CR>a
