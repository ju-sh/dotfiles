" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'whonore/Coqtail'
"Plug 'joom/latex-unicoder.vim'

" Initialize plugin system
call plug#end()

source ~/.vimrc

se nohls

" Coqtail stuff
let @i=":CoqJumpToEnd | call append('.', ['(* -- AUTO OUTPUT (Info) --'] + getbufline(b:coqtail_panel_bufs['info'], 1, '$') + ['*)'])"

let @g=":CoqJumpToEnd | call append('.', ['(* -- AUTO OUTPUT (Goal) --'] + getbufline(b:coqtail_panel_bufs['goal'], 1, '$') + ['*)'])"
