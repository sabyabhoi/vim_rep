set nocompatible
filetype off

call plug#begin('$VIM/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
"Plug 'lervag/vimtex'

"Language specefic
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mgechev/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'

Plug 'itchyny/lightline.vim'

Plug 'gruvbox-community/gruvbox'
Plug 'sjl/badwolf'

call plug#end()
filetype plugin indent on

"let g:python3_host_prog = 'C:\Users\sabya\AppData\Local\Programs\Python\Python38-32\python.exe'
"let g:tex_flavor = 'latex'
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

" These following commands are for tab completion in CoC.
" Note: Use the command :CocCommand snippets.openSnippetFiles to edit the
" default snippets
inoremap <silent><expr> <TAB>
                        \ pumvisible() ? coc#_select_confirm() :
                        \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
                        \ <SID>check_back_space() ? "\<TAB>" :
                        \ coc#refresh()

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

"fzf settings
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
let $FZF_DEFAULT_OPTS = '--reverse'
nnoremap <C-p> :Files<Cr>
let g:fzf_colors =
                        \ { 'fg':      ['fg', 'Normal'],
                        \ 'bg':      ['bg', 'Normal'],
                        \ 'hl':      ['fg', 'Comment'],
                        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                        \ 'hl+':     ['fg', 'Statement'],
                        \ 'info':    ['fg', 'PreProc'],
                        \ 'border':  ['fg', 'Ignore'],
                        \ 'prompt':  ['fg', 'Conditional'],
                        \ 'pointer': ['fg', 'Exception'],
                        \ 'marker':  ['fg', 'Keyword'],
                        \ 'spinner': ['fg', 'Label'],
                        \ 'header':  ['fg', 'Comment'] }

nnoremap <Leader>b :Buffers<cr>

let g:lightline = {
                        \ 'active': {
                        \'left': [ ['mode', 'paste'],
                        \[ 'gitbranch', 'readonly', 'filename', 'modified' ]]
                        \},
                        \ 'component_function': {
                        \       'gitbranch': 'FugitiveHead'
                        \},
                        \}
autocmd BufRead,BufNewFile *.vue setfiletype html
