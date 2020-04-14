set nocompatible
filetype off

let firstRun=0
if !filereadable($HOME . '/.vim/bundle/Vundle.vim/README.md')
    exec '!git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim/'
    let firstRun=1
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'voldikss/vim-floaterm'

call vundle#end()
filetype plugin indent on

if firstRun == 1
    :PluginInstall
endif

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

map <C-n> :NERDTreeToggle<CR>

syntax on
colorscheme spacecamp

set relativenumber
set linebreak
set showbreak=+++ 
set textwidth=100
set showmatch	
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
 
set ruler	
 
set undolevels=1000
set backspace=indent,eol,start

