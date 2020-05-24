"SIGNS                                                            *signify-signs*

"     `+`     This line was added.

"     `!`     This line was modified.

"     `_1`    The number of deleted lines below this sign. If the number is larger
"     `99`    than 9, the `_` will be omitted. For numbers larger than 99, `_>`
"     `_>`    will be shown instead.

"     `!1`    This line was modified and the lines below were deleted.
"     `!>`    It is a combination of `!` and `_`. If the number is larger than 9,
"           `!>` will be shown instead.

"     `‾`     The first line was removed. It's a special case of the `_` sign.

" See |g:signify_sign_add| on how to use different signs.


" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 1
let g:signify_sign_show_text = 1


" Jump though hunks
" nmap <space>j <plug>(signify-next-hunk)
" nmap <space>k <plug>(signify-prev-hunk)
" nmap <space>J 9999<leader>gJ " These throw an error for some reason.
" nmap <space>K 9999<leader>gk


" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

