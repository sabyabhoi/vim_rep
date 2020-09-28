set nocompatible
filetype off

call plug#begin('$VIM/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'gruvbox-community/gruvbox'
Plug 'sjl/badwolf'

call plug#end()
filetype plugin indent on

syntax enable

set background=dark
set termguicolors
colorscheme gruvbox

set nu rnu

set timeoutlen=1000 ttimeoutlen=0

set shiftwidth=4
set tabstop=4
set mouse=a
set clipboard=unnamed

set noundofile
set nobackup

set smartindent
set cindent
set autoindent

