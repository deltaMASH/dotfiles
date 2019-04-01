set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest

nnoremap j gj
nnoremap k gk

set expandtab
set tabstop=2
set shiftwidth=2

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" 検索設定
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>

colorscheme ron

if &compatible
  set nocompatible
  endif
  " Add the dein installation directory into runtimepath
  set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

  if dein#load_state('~/.vim/dein')
    call dein#begin('~/.vim/dein')

    call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
