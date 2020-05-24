augroup vim
  autocmd!
  autocmd FileType vim set tabstop=2
  autocmd FileType vim set softtabstop=2
  autocmd FileType vim set shiftwidth=2
  autocmd FileType vim set softtabstop=2
  " autocmd FileType vim :CocEnable " no language server, but basic completion is better than none
  autocmd BufWritePre *.vim %s/\s\+$//e " Remove all trailing whitespace
augroup end

