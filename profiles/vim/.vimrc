"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" ===========
" INITIALIZER
" ===========

" The statements below simply tells to Vim what files must be sourced into the
" runtime when the program starts. For each string in the array, a filepath
" will be generated and, if it exists, be "incorporated".

" E.g.: index one (sources[1]), of value "plugs" will be expanded into a
" filepath target of ~/.vim/sources.vim". If the aforesaid file exists, it is
" sourced.

" If none of the files exists, Vim starts like a fresh install.

set runtimepath+=~/.vim/

let sources = [
            \ "general",
            \ "plugs",
            \ "plug-prefs",
            \ "visual",
            \ "mappings"
            \]

for file in sources
    let target = expand("~/.vim/" . file . ".vim")
    if filereadable(target)
        execute 'source' target
    endif
endfor
