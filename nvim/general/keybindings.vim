" ## 4. Cool remaps
"
" g Leader key
" let mapleader=" "
" " let localleader=" "
" nnoremap <Space> <Nop>

" map to move up/down over wraps
nnoremap j gj
nnoremap k gk

imap <Up>    <Nop>
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

" Insert mode nav keys
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Half page up/down but recenter
nnoremap <m-d> Lzz
nnoremap <m-u> Hzz

" When using macros, I always accidentally hit shift-Q and go to Ex mode.
nnoremap Q <Nop>

" Add blank line below cursor
nnoremap <M-o> o<Esc>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" For testing vscode integration.
" nnoremap <leader>b ifoo<esc>

if !exists('g:vscode') && !exists('g:intellij')

  " Navigation a la Intellij
  " nnoremap <C-[> <C-O>
  " nnoremap <C-]> <C-I>
  " nnoremap <C-O> <Nop>
  " nnoremap <C-I> <Nop>
  " " For some reason, the above mappings make escape act like Ctrl-O
  " nnoremap <Esc> <Esc>

  " Make it easier to make it easier to edit text :P
  " map <leader>rc :tabe $MYVIMRC <cr>

  " Source vimrc after saving.  Have to refresh airline and colorscheme to fix
  " some weird behavior, which is probably related to order of settings
  " FIXME: This doesn't fix the issue.  I still have to manually call
  " :colorscheme gruvbox
  function! ResetColors()
    AirlineRefresh
    " colorscheme gruvbox
  endfunction

  autocmd! bufwritepost $MYVIMRC source % | call ResetColors()

  " easier split navigations
  " a la i3
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-H> <C-W><C-H>
  nnoremap <C-L> <C-W><C-L>

  " Window resize a la i3
  nnoremap <M-j> :resize -1<CR>
  nnoremap <M-k> :resize +1<CR>
  nnoremap <M-h> :vertical resize -1<CR>
  nnoremap <M-l> :vertical resize +1<CR>

endif
