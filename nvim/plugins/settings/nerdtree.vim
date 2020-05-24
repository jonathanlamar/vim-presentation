let NERDTreeDirArrows = 1

augroup nerd
  " nnoremap <space>n :NERDTreeFocus <CR>
  autocmd FileType nerdtree nnoremap <buffer> <Esc> :NERDTreeClose <CR>
  autocmd FileType nerdtree nnoremap <buffer> <space>n :NERDTreeClose <CR>
augroup end

