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
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'scrooloose/nerdtree.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" disable folding in markdown files
let g:vim_markdown_folding_disabled=1

syntax on
set number
set background=dark
"let base16colorspace=256
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme base16-eighties
highlight LineNr ctermfg=grey ctermbg=black
set tabstop=4
set smartindent
set shiftwidth=4

" turn on the status bar
set laststatus=2
set ru
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
