" Disable default mapping
let g:ranger_map_keys = 0

" map <space>r :RangerCurrentFileExistingOrNewTab<CR>

let g:NERDTreeHijackNetrw = 0 " add this line if you use NERDTree
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory

" let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

" List of commands
" Ranger " open current file by default
" RangerCurrentFile " Default Ranger behaviour
" RangerCurrentDirectory
" RangerWorkingDirectory

" " open always in new tabs
" RangerNewTab
" RangerCurrentFileNewTab
" RangerCurrentDirectoryNewTab
" RangerWorkingDirectoryNewTab

" " open tab, when existant or in new tab when not existant
" RangerCurrentFileExistingOrNewTab
" RangerCurrentDirectoryExistingOrNewTab
" RangerWorkingDirectoryExistingOrNewTab
