" plugin/neovim_defaults.vim - Neovim defaults for Vim
" Maintainer: Noah Frederick

if exists('g:loaded_neovim_defaults') || &compatible
  finish
else
  let g:loaded_neovim_defaults = 1
endif

" - Filetype detection is enabled by default. This can be disabled by adding
  ":filetype off" to |init.vim|.
if has('autocmd')
  filetype plugin indent on
endif

" - Syntax highlighting is enabled by default. This can be disabled by adding
  ":syntax off" to |init.vim|.
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" - Default color scheme has been updated. This can result in color schemes
"   looking differently due to them relying on how highlight groups are defined
"   by default. Add ":colorscheme vim" to |init.vim| or
  ":source $VIMRUNTIME/colors/vim.lua" to your color scheme file to restore
"   the old default links and colors.

set autoindent " - 'autoindent' is enabled
set autoread " - 'autoread' is enabled (works in all UIs, including terminal)
set background=dark " - 'background' defaults to "dark" (unless set automatically by the terminal/UI)
set backspace=indent,eol,start " - 'backspace' defaults to "indent,eol,start"
set backupdir=.,~/.local/state/nvim/backup// " - 'backupdir' defaults to .,~/.local/state/nvim/backup// (|xdg|), auto-created
set belloff=all " - 'belloff' defaults to "all"
set comments+=fb:• " - 'comments' includes "fb:•"
set commentstring= " - 'commentstring' defaults to ""
set nocompatible " - 'compatible' is always disabled
set complete-=i " - 'complete' excludes "i"
set define= " - 'define' defaults to "". The C ftplugin sets it to "^\\s*#\\s*define"
set directory=~/.local/state/nvim/swap// " - 'directory' defaults to ~/.local/state/nvim/swap// (|xdg|), auto-created
set display=lastline " - 'display' defaults to "lastline"
set encoding=utf-8 " - 'encoding' is UTF-8 (cf. 'fileencoding' for file-content encoding)
set fillchars=vert:│,fold:·,foldsep:│ " - 'fillchars' defaults (in effect) to "vert:│,fold:·,foldsep:│"
set formatoptions=tcqj " - 'formatoptions' defaults to "tcqj"
if !executable('rg') " - 'grepprg' uses the -H and -I flags for regular grep, and defaults to using ripgrep if available
	let &grepprg='grep -HIn $* /dev/null'
else
	let &grepprg='rg --vimgrep -uu'
endif
set hidden " - 'hidden' is enabled
set history=10000 " - 'history' defaults to 10000 (the maximum)
set hlsearch " - 'hlsearch' is enabled
set include= " - 'include' defaults to "". The C ftplugin sets it to "^\\s*#\\s*include"
set incsearch " - 'incsearch' is enabled
if has('win32') " - 'isfname' does not include ":" (on Windows). Drive letters are handled correctly without it. (Use |gF| for filepaths suffixed with ":line:col").
	set isfname-=:
endif
set nojoinspaces " - 'joinspaces' is disabled
" - 'jumpoptions' defaults to "clean"
set langnoremap " - 'langnoremap' is enabled
set nolangremap " - 'langremap' is disabled
set laststatus=2 " - 'laststatus' defaults to 2 (statusline is always shown)
let &listchars='tab:> ,trail:-,nbsp:+' " - 'listchars' defaults to "tab:> ,trail:-,nbsp:+"
set mouse=nvi " - 'mouse' defaults to "nvi"
set mousemodel=popup_setpos " - 'mousemodel' defaults to "popup_setpos"
set nrformats=bin,hex " - 'nrformats' defaults to "bin,hex"
set path=.,, " - 'path' defaults to ".,,". The C ftplugin adds "/usr/include" if it exists.
set ruler " - 'ruler' is enabled
set sessionoptions+=unix,slash " - 'sessionoptions' includes "unix,slash", excludes "options"
set sessionoptions-=options
set shortmess+=CF " - 'shortmess' includes "CF", excludes "S"
set shortmess-=S
set showcmd " - 'showcmd' is enabled
set sidescroll=1 " - 'sidescroll' defaults to 1
set smarttab " - 'smarttab' is enabled
set nostartofline " - 'startofline' is disabled
set switchbuf=uselast " - 'switchbuf' defaults to "uselast"
set tabpagemax=50 " - 'tabpagemax' defaults to 50
set tags=./tags;,tags " - 'tags' defaults to "./tags;,tags"
set termguicolors " - 'termguicolors' is enabled by default if Nvim can detect support from the host terminal
set ttimeout " - 'ttimeout' is enabled
set ttimeoutlen=50 " - 'ttimeoutlen' defaults to 50
set ttyfast " - 'ttyfast' is always set
set undodir=~/.local/state/nvim/undo// " - 'undodir' defaults to ~/.local/state/nvim/undo// (|xdg|), auto-created
set viewoptions+=unix,slash " - 'viewoptions' includes "unix,slash", excludes "options"
set viewoptions-=options
set viminfo+=! " - 'viminfo' includes "!"
set wildmenu " - 'wildmenu' is enabled
set wildoptions=pum,tagfile " - 'wildoptions' defaults to "pum,tagfile"

" - |editorconfig| plugin is enabled, .editorconfig settings are applied.

" - |man.lua| plugin is enabled, so |:Man| is available by default.

" - |matchit| plugin is enabled. To disable it in your config: >vim
"     :let loaded_matchit = 1
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &runtimepath) ==# ''
  runtime! macros/matchit.vim
endif

" - |g:vimsyn_embed| defaults to "l" to enable Lua highlighting
let g:vimsyn_embed = "l"

" vim: fdm=marker:sw=2:sts=2:et
