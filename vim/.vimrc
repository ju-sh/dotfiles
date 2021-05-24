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


"" Italic letters (resemble italics syntax in emacs org-mode)
digr /A 119860  " 𝐴
digr /B 119861  " 𝐵
digr /C 119862  " 𝐶
digr /D 119863  " 𝐷
digr /E 119864  " 𝐸
digr /F 119865  " 𝐹
digr /G 119866  " 𝐺
digr /H 119867  " 𝐻
digr /I 119868  " 𝐼
digr /J 119869  " 𝐽
digr /K 119870  " 𝐾
digr /L 119871  " 𝐿
digr /M 119872  " 𝑀
digr /N 119873  " 𝑁
digr /O 119874  " 𝑂
digr /P 119875  " 𝑃
digr /Q 119876  " 𝑄
digr /R 119877  " 𝑅
digr /S 119878  " 𝑆
digr /T 119879  " 𝑇
digr /U 119880  " 𝑈
digr /V 119881  " 𝑉
digr /W 119882  " 𝑊
digr /X 119883  " 𝑋
digr /Y 119884  " 𝑌
digr /Z 119885  " 𝑍
digr /a 119886  " 𝑎
digr /b 119887  " 𝑏
digr /c 119888  " 𝑐
digr /d 119889  " 𝑑
digr /e 119890  " 𝑒
digr /f 119891  " 𝑓 (overriding ⁄: Fraction slash)
digr /g 119892  " 𝑔
digr /h 8462  " ℎ (using Planck constant)
digr /i 119894  " 𝑖
digr /j 119895  " 𝑗
digr /k 119896  " 𝑘
digr /l 119897  " 𝑙
digr /m 119898  " 𝑚
digr /n 119899  " 𝑛
digr /o 119900  " 𝑜
digr /p 119901  " 𝑝
digr /q 119902  " 𝑞
digr /r 119903  " 𝑟
digr /s 119904  " 𝑠
digr /t 119905  " 𝑡
digr /u 119906  " 𝑢
digr /v 119907  " 𝑣
digr /w 119908  " 𝑤
digr /x 119909  " 𝑥
digr /y 119910  " 𝑦
digr /z 119911  " 𝑧


"" Number sets
digr NN 8469  " ℕ: Set of natural numbers
digr RR 8477  " ℝ: Set of real numbers
digr ZZ 8484  " ℤ: Set of integers
digr CC 8450  " ℂ: Set of complex numbers (overriding ~T: Cancel character)
digr QQ 8474  " ℚ: Set of rational numbers
digr BB 120121  " 𝔹: Set of Booleans (overriding ¦)

"" Constants
digr ee 8495  " ℯ: Euler's number ≅ 2.71828

digr ph 8501  " ℵ : Aleph number (in addition to א (A+))

"" Fancy letters
digr el 8467  " ℓ

"" Proof theory stuff
digr TN 8708  " ∄ (Since ∃ is TE)
digr n< 8602  " ↚ (Since ← is <-)
digr n> 8603  " ↛ (Since → is ->)
digr pr 8866  " ⊢
digr MO 8872  " ⊨
digr np 8876  " ⊬
digr NM 8877  " ⊭
digr bx 9633  " □ (duplicate of OS)
digr dm 9671  " ◇ (duplicate of Dw)
digr !3 8802  " ≢ (because ≡ is `digr =3`)
digr mp 8614  " ↦: maps to
digr FF 10200 " ⊥ (like False) (overriding : Form feed)
digr TT 10201 " ⊤ (like True) (duplicate of -T)

digr dt 8901  " ⋅ ('small dot')
digr DT 8226  " • ('big dot') (overriding ^?: DELETE character)



digr r2 8730  " √ (square root) (duplicate of RT)
digr r3 8731  " ∛ (cube root)
digr r4 8732  " ∜ (fourth root)


"" Lines
digr pp 10178  " ⟂ (perpendicular to)
digr ll 8214  " ‖ (parallel to)


"" Quantum theory stuff
digr kt 10217  " ⟩ (ket symbol)


"" Matrix brackets

"lbrackuend      ⎡
"lbrackextender  ⎢
"lbracklend      ⎣
"rbrackuend      ⎤
"rbrackextender  ⎥
"rbracklend      ⎦
"brace left top ⎧
"brace left middle ⎨
"brace left bottom ⎩
"brace right top ⎫
"brace right middle ⎬
"brace right bottom ⎭
"brace extender     ⎮


"" Box drawing symbols

" ━ (HH)
" ┃ (VV)
" ┏ (DR)
" ┓ (LD)
" ┳ (DH)
" ┻ (UH)
" ┒ (Dl)
" ┑ (dL)
" ┐ (dl)
" ┍ (dR)

digr ~~ 822  " strikethrough text overlay
