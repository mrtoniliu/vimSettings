set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'chriskempson/base16-vim' 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" disable folding in markdown files
let g:vim_markdown_folding_disabled=1

syntax on
set number
set background=dark
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Use the colour scheme
colorscheme base16-eighties

" set the font in gvim
if has("gui_running")
    set guifont=Source\ Code\ Pro\ 12
endif
" Set the line number in dark background
"highlight LineNr ctermfg=grey ctermbg=black

set tabstop=4
set smartindent
set shiftwidth=4
set expandtab

" turn on the status bar
set laststatus=2
set ru
" The settings for statuslin
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Highlight the search terms
set hlsearch

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"



"Key maps
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
