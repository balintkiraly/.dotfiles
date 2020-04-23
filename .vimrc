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
Plugin 'pantharshit00/vim-prisma'
Plugin 'mboughaba/i3config.vim'

aug i3config_ft_detection
    au!
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

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

" Bascics
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

" Split 
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>

" Tabs
map <silent><Right> :tabnext<CR>
map <silent><Left> :tabprevious<CR>
map <silent><Up> :tabnew<CR>
map <silent><Down> :tabclose<CR>


