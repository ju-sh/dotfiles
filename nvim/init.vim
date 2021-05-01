" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'whonore/Coqtail'
Plug 'joom/latex-unicoder.vim'

" Initialize plugin system
call plug#end()

"map <leader>co :!normal CoqJumpToEnd | call append('.', ['(*'] + getbufline(b:coqtail_panel_bufs['info'], 1, '$') + ['*)'])

source ~/.vimrc
