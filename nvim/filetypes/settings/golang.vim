
augroup golang
  autocmd!
  autocmd FileType go set shiftwidth=4
  autocmd FileType go set softtabstop=4
  autocmd FileType go set tabstop=4
  autocmd FileType go set expandtab
  autocmd FileType go set autoindent
  " autocmd FileType go :CocEnable
  autocmd filetype go set foldmethod=indent
  autocmd BufWritePre *.go :GoFmt " Auto-format on save
augroup end

