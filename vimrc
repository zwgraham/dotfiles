runtime bundle/vim-pathogen/autoload/pathogen.vim
set number
set nocompatible            "ensure not in vi-compatibility mode
set background=dark         "more for gvim than anything
syntax on                   "syntax hilighting
call pathogen#infect()      "https://github.com/tpope/vim-pathogen
filetype plugin indent on   "load filetype plugin and indent settings
"set autochdir
set backspace=indent,eol,start " make backspace more flexible
set backup " make backup files
set backupdir=~/.vim/backup " keep backup files here
set directory=~/.vim/tmp " keep swap files out of current directory
set fileformats=unix,mac,dos "order of priorities
set noerrorbells "stay out of my /dev/dsp !!!!!
set wildmenu "ride on the wild side
set wildignore=*.o,*.pyc,*.jpg,*.gif,*.png,*.out
set wildmode=list:longest
let mapleader=","
set lazyredraw "do not redraw while running macros
set tabstop=4 softtabstop=4 shiftwidth=4
set cursorcolumn " highlight the column
set incsearch "start searching while typing
set laststatus=2 "always show the status line
set matchtime=5 "tenths of seconds to blink matching brackets
set showcmd " show the command being typed
set showmatch " show matching brackets
set statusline=%F%m%r%h%w[%{&ff}]%y[%p%%][%l:%L]
"              |  | | | |  |      |  |     |  |
"              |  | | | |  |      |  |     |  + numer of lines
"              |  | | | |  |      |  |     +-- current line
"              |  | | | |  |      |  +-- current % into file
"              |  | | | |  |      +-- current syntax in
"              |  | | | |  |          square brackets
"              |  | | | |  +-- current fileformat
"              |  | | | +-- preview flag
"              |  | | +-- help flag 
"              |  | +-- readonly flag 
"              |  +-- modified flag 
"              +-- full path to file in the buffer


"folding



"mappings
map <F12> ggVGg? "rot13 =)
"toggle 'set list'
nmap <leader>l :set list!<CR> 
set listchars=tab:▸\ ,eol:¬   "vimcasts show invisibles







"this is from :mkvimrc 
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set history=100
set viminfo='20,\"50

if has("autocmd")
    "
    filetype on
    "
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
endif

"plugin config
"vim-latex
"let g:tex_flavor='latex'
"vim-flake8
"let g:flake8_max_line_length=110
" vim: set ft=vim :
