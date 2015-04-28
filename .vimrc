set encoding=utf-8
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-commentary'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" disable folding in markdown files
let g:vim_markdown_folding_disabled=1

syntax on
set number

" Colors related
set background=dark
set t_Co=256
let base16colorspace=256
colorscheme base16-eighties

" set the font in gvim
if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas\ 12
    elseif has("gui_gtk2")
        set guifont=Source\ Code\ Pro\ 12
    else
        set guifont=Monaco\ 11
    endif
    if ($TERM_PROGRAM == 'iTerm.app')
        "highlight LineNr ctermfg=light ctermbg=dark
    endif
endif

set tabstop=4
set autoindent
set copyindent
set shiftwidth=4
set expandtab
"set cursorcolumn
"set cursorline
set showmatch

" turn on the status bar
set laststatus=2
set ru

" Useful backspace
set backspace=indent,eol,start

" ==== Search ====
" Highlight the search terms
set hlsearch
set incsearch
set ignorecase

let g:airline#extensions#whitespace#enabled = 0

" Set backup swp file location
"set backupdir=~/vimback/backup//
"set directory=~/vimback/swap//
"set undodir=~/vimback/undo//

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

" ==== Key shortcuts ====

" map the leader key to ,
let mapleader = ','
" map the C - hjkl to control window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>a :Ag<space>
nnoremap <leader><space> :FixWhitespace<CR>

