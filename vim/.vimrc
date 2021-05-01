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

    " add any database in current directory
    if filereadable("cscope.out")
        silent cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        silent cs add $CSCOPE_DB
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


" Digraphs
" https://en.wikipedia.org/wiki/Mathematical_operators_and_symbols_in_Unicode
" https://github.com/joom/latex-unicoder.vim/blob/master/autoload/unicoder.vim

"" Set theory
digr )- 8713  " ∉

"" Super-script characters
" Note: q, C, F, Q, S, X, Y, Z haven't got super-script version.
digr ^0 8304  " ⁰ (duplicate of 0S)
digr ^1 185   " ¹ (duplicate of 1S)
digr ^2 178   " ² (duplicate of 2S)
digr ^3 179   " ³ (duplicate of 3S)
digr ^4 8308  " ⁴ (duplicate of 4S)
digr ^5 8309  " ⁵ (duplicate of 5S)
digr ^6 8310  " ⁶ (duplicate of 6S)
digr ^7 8311  " ⁷ (duplicate of 7S)
digr ^8 8312  " ⁸ (duplicate of 8S)
digr ^9 8313  " ⁹ (duplicate of 9S)
digr ^+ 8314  " ⁺ (duplicate of +S)
digr ^- 8315  " ⁻ (duplicate of -S)
digr ^a 7491  " ᵃ
digr ^b 7495  " ᵇ
digr ^c 7580  " ᶜ
digr ^d 7496  " ᵈ
digr ^e 7497  " ᵉ
digr ^f 7584  " ᶠ
digr ^g 7501  " ᵍ
digr ^h  688  " ʰ
digr ^i 8305  " ⁱ
digr ^j  690  " ʲ
digr ^k 7503  " ᵏ
digr ^l  737  " ˡ
digr ^m 7504  " ᵐ
digr ^n 8319  " ⁿ
digr ^o 7506  " ᵒ
digr ^p 7510  " ᵖ
digr ^r  691  " ʳ
digr ^s  738  " ˢ
digr ^t 7511  " ᵗ
digr ^u 7512  " ᵘ
digr ^v 7515  " ᵛ
digr ^w  695  " ʷ
digr ^x  739  " ˣ
digr ^y  696  " ʸ
digr ^z 7611  " ᶻ
digr ^A 7468  " ᴬ
digr ^B 7470  " ᴮ
digr ^D 7472  " ᴰ
digr ^E 7473  " ᴱ
digr ^G 7475  " ᴳ
digr ^H 7476  " ᴴ
digr ^I 7477  " ᴵ
digr ^J 7478  " ᴶ
digr ^K 7479  " ᴷ
digr ^L 7480  " ᴸ
digr ^M 7481  " ᴹ
digr ^N 7482  " ᴺ
digr ^O 7484  " ᴼ
digr ^P 7486  " ᴾ
digr ^R 7487  " ᴿ
digr ^T 7488  " ᵀ
digr ^U 7489  " ᵁ
digr ^V 11389  " ⱽ
digr ^W 7490  " ᵂ


"" Sub-script characters
" Note: b, c, d, f, g, q, w, y, z haven't got sub-script version.
" Note: No upper case Latin letter has got sub-script version.
digr _0 8320  " ₀ (duplicate of 0s)
digr _1 8321  " ₁ (duplicate of 1s)
digr _2 8322  " ₂ (duplicate of 2s)
digr _3 8323  " ₃ (duplicate of 3s)
digr _4 8324  " ₄ (duplicate of 4s)
digr _5 8325  " ₅ (duplicate of 5s)
digr _6 8326  " ₆ (duplicate of 6s)
digr _7 8327  " ₇ (duplicate of 7s)
digr _8 8328  " ₈ (duplicate of 8s)
digr _9 8329  " ₉ (duplicate of 9s)
digr _+ 8330  " ₊ (duplicate of +s)
digr _- 8331  " ₋ (duplicate of -s)
digr _a 8336  " ₐ
digr _e 8337  " ₑ
digr _h 8341  " ₕ
digr _i 7522  " ᵢ
digr _j 11388  " ⱼ
digr _k 8342  " ₖ
digr _l 8343  " ₗ
digr _m 8344  " ₘ
digr _n 8345  " ₙ
digr _o 8338  " ₒ
digr _p 8346  " ₚ
digr _r 7523  " ᵣ
digr _s 8347  " ₛ
digr _t 8348  " ₜ
digr _u 7524  " ᵤ
digr _v 7525  " ᵥ
digr _x 8339  " ₓ


"" Number sets
digr NN 8469  " ℕ: Set of natural numbers
digr RR 8477  " ℝ: Set of real numbers
digr ZZ 8484  " ℤ: Set of integers
              " ℂ: Set of complex numbers


"" Proof theory stuff
digr pr 8866  " ⊢
digr MO 8872  " ⊨
digr np 8876  " ⊬
digr NM 8877  " ⊭
digr bx 9633  " □ (duplicate of OS)
digr dm 9671  " ◇ (duplicate of Dw)


"Cube root   ∛   U+221B
"Fourth root ∜   U+221C

"" Matrix brackets

"lbrackuend      ⎡
"lbrackextender  ⎢
"lbracklend      ⎣
"rbrackuend      ⎤
"rbrackextender  ⎥
"rbracklend      ⎦
