augroup scala
  autocmd!
  " TODO: Set filetype scala for sbt files
  autocmd BufRead,BufNewFile *.sbt set filetype=scala
  autocmd FileType scala set tabstop=2
  autocmd FileType scala set softtabstop=2
  autocmd FileType scala set shiftwidth=2
  autocmd FileType scala set softtabstop=2
  autocmd FileType scala set foldmethod=syntax " This will do for now
  autocmd FileType scala set colorcolumn=120
  " autocmd FileType scala :CocEnable
  autocmd BufWritePre *.scala,*.sbt %s/\s\+$//e
  autocmd BufWritePre *.scala,*.sbt :SortScalaImports
augroup end
