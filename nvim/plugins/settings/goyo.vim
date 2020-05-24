let g:goyo_width = 85 " So 80 character lines don't wrap

let s:goyo_on = 0

" TODO: Open on new tab to save old splits.
function! GoyoNoLines()
  if s:goyo_on
    let s:goyo_on = 0
    Goyo
    set cursorline
  else
    let s:goyo_on = 1
    only
    Goyo
    set nocursorline
  endif
endfunction
