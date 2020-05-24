" disable vim-go :GoDef short cut (gd)
" this is handled by coc.nvim
let g:go_def_mapping_enabled = 0
" Set foldmethod=syntax and get this stuff
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
" vim-go syntax highlighting
let g:go_highlight_trailing_whitespace_error = 1
" Highlight commonly used types
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
" highlight struct and interface names
let g:go_highlight_types = 1
" highlight struct field named
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 0
