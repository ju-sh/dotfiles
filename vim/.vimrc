"set filetype plugin on
"set filetype indent on

" Syntax highlighting on
syn on

" Show title of file being edited as window title
"se title

" Make tabs appear as 4 spaces
set tabstop=4

" Make each shift to be 4 spaces
set shiftwidth=4

" Expand tabs to spaces
set expandtab

" Minimum number of lines to keep above and below cursor
"set scrolloff=0

"set textwidth=80

" Always show status line
set laststatus=2

" Set color scheme
colo industry

source ~/.vim/digraphsrc.vim

if has("cscope")
    source ~/.vim/cscoperc.vim
endif


" From https://stackoverflow.com/questions/2119754/switch-to-last-active-tab-in-vim
" Switch to last-active tab
if !exists('g:last_tab')
    let g:last_tab = 1
    let g:last_tab_backup = 1
endif
autocmd! TabLeave * let g:last_tab_backup = g:last_tab | let g:last_tab = tabpagenr()
autocmd! TabClosed * let g:last_tab = g:last_tab_backup
nmap <silent> gl :exe "tabn " . g:last_tab<cr>
