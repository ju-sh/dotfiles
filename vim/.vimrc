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


" Digraphs
" https://en.wikipedia.org/wiki/Mathematical_operators_and_symbols_in_Unicode
" https://github.com/joom/latex-unicoder.vim/blob/master/autoload/unicoder.vim

"" Set theory
digr )- 8713  " ∉

"" Super-script characters
" Note: q, C, F, Q, S, X, Y, Z haven't got super-script version.
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


"" Proof theory stuff
digr pr 8866  " ⊢
digr MO 8872  " ⊨


"Cube root   ∛   U+221B
"Fourth root ∜   U+221C
