" ## 5. Terimal Stuff



" Popup guake-style terminal
" Keep track of buffer and window with these variables
let s:term_buf = 0
let s:term_win = 0

function! TermToggle(height)
  " Height input should be a float between 0 and 1, to represent portion of
  " height to use for pop-up term.
  let s:term_toggle_height = float2nr(&lines * a:height)
  if win_gotoid(s:term_win)
    hide
  else
    botright new terminal
    exec "resize ".s:term_toggle_height
    try
      exec "buffer ".s:term_buf
      exec "bd terminal"
    catch
      call termopen($SHELL, {"detach": 0})
      let s:term_buf = bufnr("")
      setlocal nonu nornu scl=no nocul
    endtry
    startinsert!
    let s:term_win = win_getid()
  endif
endfunction

if !exists('g:vscode') && !exists('g:intellij')
  " nnoremap <silent><leader>t :call TermToggle(0.3)<CR>
  " FIXME: This activates in insert mode. Not good!
  " inoremap <silent><leader>t <Esc>:call TermToggle(20)<CR>
  " FIXME: This still activates in insert mode while in a terminal buffer.
  " Also not good!
  tnoremap <silent><leader>tt <C-\><C-n>:call TermToggle(0.3)<CR>

  " Terminal stuff for neovim
  " These are for more permanent shells.  They will not persist on close
  command! T new term://$SHELL | setlocal nonumber norelativenumber nocursorline
  command! VT vnew term://$SHELL | setlocal nonumber norelativenumber nocursorline
  command! TT tabnew term://$SHELL | setlocal nonumber norelativenumber nocursorline

  " Set Esc to be the key for leaving the terminal.
  " Except for fzf, where it is already mapped to kill the program and exit.
  " This dumb mapping with no qualification is to silence an error for unmapping
  " when there has been no map.  Very :|
  tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

endif


