" Match tildes at end of buffer to number column color...
" TODO: These are gruvbox colors.  Generalize.
autocmd ColorScheme * highlight! EndOfBuffer ctermfg=243 guifg=#7c6f64

" Allow terminal default transparent background
" WARNING: Only do this if the terminal and vim colorschemes are the same
autocmd ColorScheme * highlight! Normal guibg=NONE ctermbg=NONE

" Make vertical splits more visible
" WARNING: These colors are chosen for gruvbox
autocmd ColorScheme * highlight! VertSplit ctermfg=223 guifg=#EBDBB2
set fillchars+=vert:\|

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_white = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_improved_warnings = 1
let g:gruvbox_number_column = 'bg1'
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \   }
  \ }
let g:onedark_terminal_italics = 1
let g:palenight_terminal_italics=1
let ayucolor = 'mirage'
