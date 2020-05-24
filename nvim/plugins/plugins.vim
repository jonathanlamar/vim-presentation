" ## 1: Plugins and their settings

" set the runtime path to include Vundle and initialize
call plug#begin('~/.config/nvim/autoload/plugged')



  " General functionality


  " Repleat-plugin-with-.:
  " TODO: Come up with better mappings for this
  Plug 'tpope/vim-repeat'

  " Increment dates and times with C-A and C-X
  Plug 'tpope/vim-speeddating'

  if !exists('g:vscode') && !exists('g:intellij')
    " Neat column highlighting for csv and tsv files.
    " Also allows some basic SQL functionality, but I haven't learned that
    Plug 'mechatroner/rainbow_csv'

    " NERDTree for file navigation
    " Plug 'scrooloose/nerdtree'
    " source $HOME/.config/nvim/plugins/settings/nerdtree.vim

    " Airline for nifty info in the status and tablines
    Plug 'vim-airline/vim-airline'
    source $HOME/.config/nvim/plugins/settings/vim-airline.vim

    Plug 'vim-airline/vim-airline-themes'

    " Fuzzy search for files and tags, grep contents, etc.
    Plug 'junegunn/fzf.vim'
    source $HOME/.config/nvim/plugins/settings/fzf.vim

    " Display available keybindings in popup.
    Plug 'liuchengxu/vim-which-key'
    " FIXME: This souce has to go after all plugins have been configured.
    " source $HOME/.config/nvim/plugins/settings/vim-which-key.vim

    " Start Screen
    Plug 'mhinz/vim-startify'
    source $HOME/.config/nvim/plugins/settings/vim-startify.vim

    " Text Navigation - not sure how I feel about this.
    " Plug 'justinmk/vim-sneak'
    " source $HOME/.config/nvim/plugins/settings/vim-sneak.vim

    " Ranger integration
    " Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " source $HOME/.config/nvim/plugins/settings/rnvimr.vim

    " TODO: Figure out how to make this less ugly
    Plug 'francoiscabrol/ranger.vim'
    Plug 'rbgrouleff/bclose.vim'
    source $HOME/.config/nvim/plugins/settings/ranger.vim

    " Neat icons
    Plug 'ryanoasis/vim-devicons'

    " Distraction-free markdown writing
    Plug 'junegunn/goyo.vim'
    source $HOME/.config/nvim/plugins/settings/goyo.vim
  endif



  " Colorschemes


  if !exists('g:vscode') && !exists('g:intellij')
    " The gold standard of warm dark colorschemes
    Plug 'morhetz/gruvbox'
    " TODO: Some of the settings in these colorscheme files apply to all colorschemes
    source $HOME/.config/nvim/plugins/settings/gruvbox.vim

    Plug 'NLKNguyen/papercolor-theme' " Beautiful with python! But not much support for scala.
    source $HOME/.config/nvim/plugins/settings/papercolor-theme.vim

    Plug 'joshdick/onedark.vim' " Decent middle ground with good support for both scala and python, but low contrast

    Plug 'danilo-augusto/vim-afterglow'
    source $HOME/.config/nvim/plugins/settings/vim-afterglow.vim

    Plug 'ayu-theme/ayu-vim'
    source $HOME/.config/nvim/plugins/settings/ayu-vim.vim

    Plug 'chriskempson/base16-vim'
    source $HOME/.config/nvim/plugins/settings/base16-vim.vim
  endif



  " Make coding easier


  " Comment-in-movement:
  Plug 'tpope/vim-commentary'
  source $HOME/.config/nvim/plugins/settings/vim-commentary.vim

  " Surround-movement-with-X:
  Plug 'tpope/vim-surround'

  if !exists('g:vscode') && !exists('g:intellij')
    " The best worst language server/linting integration.
    Plug 'neoclide/coc.nvim', {'branch': 'release' }
    source $HOME/.config/nvim/plugins/settings/coc-nvim.vim

    " Provides auto-completion for common commands.
    " Plug 'mattn/emmet-vim'

    " Syntax highlighting for many languages
    Plug 'sheerun/vim-polyglot'

    " Colored parens
    " Plug 'junegunn/rainbow_parentheses.vim'
    " source $HOME/.config/nvim/plugins/settings/rainbow_parentheses.vim

    " Better Comments
    " Not sure how I feel about this one...
    " Plug 'jbgutierrez/vim-better-comments'

    " vim-scala - modern scaladoc indentation
    Plug 'derekwyatt/vim-scala' " This one has a bit more than syntax highlighting.
    source $HOME/.config/nvim/plugins/settings/vim-scala.vim

    " Nice python syntax highlighting.  Doesn't seem to work with all
    " colorschemes, but does with gruvbox
    Plug 'vim-python/python-syntax'
    source $HOME/.config/nvim/plugins/settings/python-syntax.vim

    " Golang support for building, etc.
    Plug 'fatih/vim-go'
    source $HOME/.config/nvim/plugins/settings/vim-go.vim
  endif



  " General dev/git stuff


  " Have the file system follow you around.  Not sure how I feel about this one...
  Plug 'airblade/vim-rooter'
  source $HOME/.config/nvim/plugins/settings/vim-rooter.vim

  if !exists('g:vscode') && !exists('g:intellij')
    Plug 'Xuyuanp/nerdtree-git-plugin'
    source $HOME/.config/nvim/plugins/settings/nerdtree-git-plugin.vim

    Plug 'airblade/vim-gitgutter'

    " Commit browser
    Plug 'junegunn/gv.vim'

    " Integration for git in vim.
    " TODO: Learn, configure, and start using.
    Plug 'tpope/vim-fugitive'
    " This enables GBrowse and some other github-specific functionality for fugitive.
    " TODO: Figure out gitlab integration.
    Plug 'tpope/vim-rhubarb'
  endif

call plug#end()

