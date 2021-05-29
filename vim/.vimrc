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

" Always show status line
set laststatus=2

" Set color scheme
colo industry


if has("cscope")
    " command to execute cscope
    set csprg=/usr/bin/cscope

    " cscope databases are searched first, followed by tag files
    set csto=0

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cst

    " allow relative paths from cscope.out db
    set csre

    " show message when adding cscope db (cscopeverbose)
    set csverb

    " add database pointed to by environment
    if $CSCOPE_DB != ""
        silent cs add $CSCOPE_DB
    " else add any database in current directory
    elseif filereadable("cscope.out")
        silent cs add cscope.out
    endif


    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>

    " Using 'CTRL-spacebar' then a search type makes the vim window
    " split horizontally, with search result displayed in
    " the new window.

    nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space>a :scs find a <C-R>=expand("<cword>")<CR><CR>

    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one

    nmap <C-Space><C-Space>s
        \:vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>g
        \:vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>c
        \:vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>t
        \:vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>e
        \:vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>i
        \:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-Space><C-Space>d
        \:vert scs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-Space><C-Space>a
        \:vert scs find a <C-R>=expand("<cword>")<CR><CR>
endif

source ~/.vim/digraph_defs.vim
