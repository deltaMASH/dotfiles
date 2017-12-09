set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk

set expandtab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>

syntax enable
colorscheme torte

set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin()
"insert here your Neobundle plugins"
NeoBundle 'scrooloose/nerdtree'
call neobundle#end()

filetype plugin indent on

nnoremap <silent><C-e> :NERDTreeToggle<CR>
