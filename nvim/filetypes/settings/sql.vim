augroup sql
  autocmd!
  autocmd BufRead,BufNewFile *.hql set filetype=sql
  autocmd FileType sql set tabstop=2
  autocmd FileType sql set softtabstop=2
  autocmd FileType sql set shiftwidth=2
  autocmd FileType sql set softtabstop=2
  " autocmd FileType sql :CocEnable " no language server, but basic completion is better than none
  autocmd BufWritePre *.sql,*.hql %s/\s\+$//e
augroup end


