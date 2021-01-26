set tabstop=2 softtabstop=2
set shiftwidth=2 
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set nohlsearch
set incsearch
set scrolloff=8
set signcolumn=yes
set completeopt=menuone,noinsert,noselect


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-easytags'
" Plugin 'majutsushi/tagbar'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'

" Plugin 'joonty/vdebug'


" all of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required

set laststatus=2
nmap <F8> :TagbarToggle<CR>
let mapleader = " "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
lua require('lspconfig').tsserver.setup{ }
syntax on
