set nocompatible
filetype off

set encoding=UTF-8
call plug#begin('$VIM/plugged')

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

Plug 'rpdelaney/vim-sourcecfg'
Plug 'pangloss/vim-javascript'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'burnettk/vim-angular'

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

Plug 'gruvbox-community/gruvbox'
Plug 'sjl/badwolf'

call plug#end()
filetype plugin indent on

"let g:lsc_auto_map = v:true

let g:python_host_prog  = 'C:\Program Files\Python27'
let g:python3_host_prog = 'C:\Users\admin\AppData\Local\Programs\Python\Python38-32'

syntax enable
set background=dark
colorscheme badwolf
set termguicolors

let g:airline_powerline_fonts = 1

set nu rnu

set timeoutlen=1000 ttimeoutlen=0

set shiftwidth=2 
set tabstop=2
set mouse=a

set noundofile
set nobackup

set smartindent
set cindent
set autoindent
