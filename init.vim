"=========
" setting
"=========
set fenc=utf-8
set nobackup
set noswapfile
set autoread

set number
set cursorline
"set cursorcolumn
set smartindent
set showmatch
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set list listchars=tab:\▸\-
set tabstop=4
set shiftwidth=4

set incsearch
set wrapscan
set hlsearch
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

set foldmethod=marker

autocmd BufNewFile *.html 0r $HOME/.config/nvim/template/html.skel
autocmd BufNewFile *.html.tera 0r $HOME/.config/nvim/template/html.skel

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  " Add or remove your plugins here like this:
	call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
let g:dein#auto_recache = 1

"End dein Scripts-------------------------
