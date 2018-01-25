"              __
"      __  __ /\_\    ___ ___   _ __   ___
"     /\ \/\ \\/\ \ /' __` __`\/\`'__\/'___\
"   __\ \ \_/ |\ \ \/\ \/\ \/\ \ \ \//\ \__/
"  /\_\\ \___/  \ \_\ \_\ \_\ \_\ \_\\ \____\
"  \/_/ \/__/    \/_/\/_/\/_/\/_/\/_/ \/____/
"
" author: cai <caianrais@protonmail.com>
"   code: github.com/caianrais/init



" ========
" COMMANDS
" ========

" Sets filetype when editing i3's configuration
autocmd BufRead,BufNewFile $INIT_DIR/i3/bin/source/rwal/templates/i3 set filetype=i3

" Prevents vim to yell at me when I use some capitalized commands
command W w
command Q q
command WQ wq
