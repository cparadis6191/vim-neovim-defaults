" plugin/neovim_defaults.vim - Neovim defaults for Vim
" Maintainer: Noah Frederick

if exists('g:loaded_neovim_defaults') || &compatible
  finish
else
  let g:loaded_neovim_defaults = 1
endif

" - Syntax highlighting is enabled by default
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" - ":filetype plugin indent on" is enabled by default
if has('autocmd')
  filetype plugin indent on
endif

set autoindent " - 'autoindent' is enabled
set autoread " - 'autoread' is enabled
set background=dark " - 'background' defaults to "dark" (unless set automatically by the terminal/UI)
set backspace=indent,eol,start " - 'backspace' defaults to "indent,eol,start"
set backupdir=.,~/.local/share/nvim/backup " - 'backupdir' defaults to .,~/.local/share/nvim/backup (|xdg|)
set belloff=all " - 'belloff' defaults to "all"
set nocompatible " - 'compatible' is always disabled
set complete-=i " - 'complete' excludes "i"
set cscopeverbose " - 'cscopeverbose' is enabled
set directory=~/.local/share/nvim/swap// " - 'directory' defaults to ~/.local/share/nvim/swap// (|xdg|), auto-created
set display=lastline " - 'display' defaults to "lastline,msgsep"
set encoding=utf-8 " - 'encoding' is UTF-8 (cf. 'fileencoding' for file-content encoding)
set fillchars=vert:│,fold:·,foldsep:│ " - 'fillchars' defaults (in effect) to "vert:│,fold:·,sep:│"
set formatoptions=tcqj " - 'formatoptions' defaults to "tcqj"
set nofsync " - 'fsync' is disabled
set history=10000 " - 'history' defaults to 10000 (the maximum)
set hlsearch " - 'hlsearch' is enabled
set incsearch " - 'incsearch' is enabled
set langnoremap " - 'langnoremap' is enabled
set nolangremap " - 'langremap' is disabled
set laststatus=2 " - 'laststatus' defaults to 2 (statusline is always shown)
set listchars=tab:>\ ,trail:-,nbsp:+ " - 'listchars' defaults to "tab:> ,trail:-,nbsp:+"
set nrformats=bin,hex " - 'nrformats' defaults to "bin,hex"
set ruler " - 'ruler' is enabled
set sessionoptions+=unix,slash " - 'sessionoptions' includes "unix,slash", excludes "options"
set sessionoptions-=options
set shortmess+=F " - 'shortmess' includes "F", excludes "S"
set shortmess-=S
set showcmd " - 'showcmd' is enabled
set sidescroll=1 " - 'sidescroll' defaults to 1
set smarttab " - 'smarttab' is enabled
set nostartofline " - 'startofline' is disabled
set tabpagemax=50 " - 'tabpagemax' defaults to 50
set tags=./tags;,tags " - 'tags' defaults to "./tags;,tags"
set ttimeoutlen=50 " - 'ttimeoutlen' defaults to 50
set ttyfast " - 'ttyfast' is always set
set viewoptions+=unix,slash " - 'viewoptions' includes "unix,slash"
set undodir=~/.local/share/nvim/undo " - 'undodir' defaults to ~/.local/share/nvim/undo (|xdg|), auto-created
set viminfo+=! " - 'viminfo' includes "!"
set wildmenu " - 'wildmenu' is enabled
set wildoptions=tagfile " - 'wildoptions' defaults to "pum,tagfile"

" - |man.vim| plugin is enabled, so |:Man| is available by default.

" - |matchit| plugin is enabled. To disable it in your config: >
"     :let loaded_matchit = 1
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &runtimepath) ==# ''
  runtime! macros/matchit.vim
endif

" - |g:vimsyn_embed| defaults to "l" to enable Lua highlighting
let g:vimsync_embed = 1

" vim: fdm=marker:sw=2:sts=2:et
