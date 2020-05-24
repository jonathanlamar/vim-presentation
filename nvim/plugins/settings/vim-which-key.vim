
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '\'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '\'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
" let g:which_key_map['/'] = [ ':Commentary'                         , 'comment' ]
let g:which_key_map['f'] = [ ':FzfGFiles'                          , 'search files' ]
let g:which_key_map['h'] = [ ':sp'                                 , 'split below']
let g:which_key_map['r'] = [ ':RangerCurrentFileExistingOrNewTab'  , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                           , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                                 , 'search text' ]
let g:which_key_map['v'] = [ ':vsp'                                , 'split right']
let g:which_key_map['i'] = [ ':tabe $MYVIMRC'                      , 'init.vim']
" TODO: Figure out a letter for terminal
" let g:which_key_map[''] = [ ':call TermToggle(0.3)'               , 'terminal'],


" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'b' : [':FzfBLines'    , 'current buffer'],
      \ 'B' : [':FzfBuffers'   , 'open buffers'],
      \ 'c' : [':FzfCommits'   , 'commits'],
      \ 'C' : [':FzfBCommits'  , 'buffer commits'],
      \ 'f' : [':FzfFiles'     , 'files'],
      \ 'g' : [':FzfGFiles'    , 'git files'],
      \ 'G' : [':FzfGFiles?'   , 'modified git files'],
      \ 'h' : [':FzfHistory'   , 'file history'],
      \ 'H' : [':FzfHistory:'  , 'command history'],
      \ 'l' : [':FzfLines'     , 'lines'] ,
      \ 'm' : [':FzfMarks'     , 'marks'] ,
      \ 'M' : [':FzfMaps'      , 'normal maps'] ,
      \ 'p' : [':FzfHelptags'  , 'help tags'] ,
      \ 'P' : [':FzfTags'      , 'project tags'],
      \ 's' : [':FzfSnippets'  , 'snippets'],
      \ 'S' : [':FzfColors'    , 'color schemes'],
      \ 't' : [':FzfRg'        , 'text Rg'],
      \ 'T' : [':FzfBTags'     , 'buffer tags'],
      \ 'w' : [':FzfWindows'   , 'search windows'],
      \ 'y' : [':FzfFiletypes' , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'g' : [':call GoyoNoLines()'     , 'goyo'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 't' : [':call TermToggle(0.3)'   , 'terminal'],
      \ 'w' : [':set nowrap!'            , 'wrap text']
      \ }


" Register which key map
call which_key#register('\', "g:which_key_map")
