set number
set nocompatible            "ensure not in vi-compatibility mode
set background=dark         "more for gvim than anything
syntax on                   "syntax hilighting
filetype plugin indent on   "load filetype plugin and indent settings
set autochdir "always switch to the current file directory
set backspace=indent,eol,start " make backspace more flexible
set backup " make backup files
set backupdir=~/.vim/backup " keep backup files here
set directory=~/.vim/tmp " keep swap files out of current directory
set fileformats=unix,mac,dos "order of priorities
set noerrorbells "stay out of my /dev/dsp !!!!!
set wildmenu "ride on the wild side
set wildignore=*.o,*.pyc,*.jpg,*.gif,*.png,*.out
set wildmode=list:longest

set lazyredraw "do not redraw while running macros
set tabstop=4
set shiftwidth=4
set expandtab
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
set foldenable " Turn on folding
set foldmarker={,} " fold c style code
set foldmethod=marker "fold on the marker
set foldlevel=100 "dont autofold anything but can fold manually
set foldopen=block,hor,mark,percent,quickfix,tag "movements that open a fold



"mappings
map <F12> ggVGg? "rot13 =)






"this is from :mkvimrc 
version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set fileencodings=ucs-bom,utf-8,latin1
set formatoptions=tcql
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0
set helplang=en
set history=50
set hlsearch
set ruler
set viminfo='20,\"50
" vim: set ft=vim :
