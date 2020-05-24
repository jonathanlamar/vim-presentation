augroup bash
  autocmd!
  autocmd FileType bash set tabstop=2
  autocmd FileType bash set softtabstop=2
  autocmd FileType bash set shiftwidth=2
  autocmd FileType bash set softtabstop=2
  " autocmd FileType bash :CocEnable " no language server, but basic completion is better than none
  autocmd BufWritePre *.sh %s/\s\+$//e
augroup end

