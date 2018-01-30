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
" COMMANDS & REMAPS
" =================

" NAVIGATION {{{


    " Up and down by "line on screen" rather than "physical line"
    nmap <C-j> gj
    nmap <C-k> gk

    imap <C-j> <C-o>gj
    imap <C-k> <C-o>gk

    " Cut a line in VISUAL LINE without entering the INSERT MODE (works similar to <d>elete)
    xnoremap m c<BS><Esc>

    " Copy selected text to system clipboard (requires gvim)
    vnoremap <C-c> "+y


" }}}
" BUFFERS {{{


    " New empty horizontal
    nnoremap <Leader>bh :new<CR>

    " New empty vertical
    nnoremap <Leader>bv :vnew<CR>

    " List all
    nnoremap <Leader>bl :ls<CR>

    " Go to previous
    nnoremap <C-h> :bp<CR>
    inoremap <C-h> <Esc>:bp<CR>

    " Go to next
    nnoremap <C-l> :bn<CR>
    inoremap <C-l> <Esc>:bn<CR>


" }}}
" WINDOWS {{{


    " Move around windows more easily
    nnoremap <C-Up> :wincmd k<CR>
    inoremap <C-Up> <C-o>:wincmd k<CR>

    nnoremap <C-Down> :wincmd j<CR>
    inoremap <C-Down> <C-o>:wincmd j<CR>

    nnoremap <C-Left> :wincmd h<CR>
    inoremap <C-Left> <C-o>:wincmd h<CR>

    nnoremap <C-Right> :wincmd l<CR>
    inoremap <C-Right> <C-o>:wincmd l<CR>


" }}}
" ALIASES {{{


    " Prevents Vim to yell at me when I use capitalized commands
    command W w
    command Q q
    command WQ wq


" }}}
" PLUGINS {{{


    " Open NERDTree
    nnoremap <F3> :NERDTreeToggle<CR>
    inoremap <F3> <Esc>:NERDTreeToggle<CR>a

    " Open Tagbar
    nnoremap <F4> :TagbarToggle<CR>
    inoremap <F4> <Esc>:TagbarToggle<CR>a

    " Open Tagbar
    nnoremap <F9> :Goyo 90<CR>
    inoremap <F9> <Esc>:Goyo 90<CR>a


" }}}
" VIM FILETYPE {{{


    " Folding with markers ({{{ & }}})
    autocmd FileType vim set foldmethod=marker

    " Toggles folding with <Space>
    autocmd FileType vim nnoremap <Space> za


" }}}
" ORG FILETYPE {{{


    " Jump marker
    autocmd FileType org nnoremap <Space><Tab> <Esc>/::JUMP::<Enter>"_c8l

    " Backslash (\) as a local leader
    autocmd FileType org let maplocalleader="\\"

    " Inserts a syntax range block
    autocmd FileType org nnoremap <localleader>cb $a<Enter><Enter>#+BEGIN_SRC<Enter>::JUMP::<Enter>#+END_SRC<Enter><Esc>3k$a<Space>


" }}}
" MISC {{{


    " Toggles search highlighting
    nnoremap <Leader>s :set hlsearch!<CR>

    " Automatically deletes all tralling whitespace on save
    autocmd BufWritePre * %s/\s\+$//e

    " Disables automatic commenting on newline
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Sets `troll` filetype for files with `troll` extension
    autocmd BufRead,BufNewFile *.troll set filetype=troll


" }}}
