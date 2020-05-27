augroup markdown
  autocmd!
  " TODO: Set filetype scala for sbt files
  autocmd FileType markdown set tabstop=2
  autocmd FileType markdown set softtabstop=2
  autocmd FileType markdown set shiftwidth=2
  autocmd FileType markdown set softtabstop=2
  " autocmd FileType markdown :CocDisable
  autocmd BufWritePre *.md %s/\s\+$//e
  " autocmd BufWritePre *.md :normal ggVGgq " Format file on save
  autocmd FileType markdown set textwidth=80
augroup end

