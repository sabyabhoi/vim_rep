source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

set encoding=utf-8

set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/badwolf'
Plugin 'alvan/vim-closetag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'scrooloose/nerdtree'
"Plugin 'SirVer/ultisnips'
Plugin 'rpdelaney/vim-sourcecfg'
Plugin 'honza/vim-snippets'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set termguicolors

set lines=50 columns=200

syntax enable
set background=dark
colorscheme gruvbox
"let g:solarized_termcolors=256
"let g:solarized_visibility = "high"

let g:airline_powerline_fonts = 1

"nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

set nu
set guifont=Lucida\ Console:h10 noanti

set noundofile
set nobackup

set shiftwidth=4 
set tabstop=4

set smartindent
set cindent
set autoindent

set guioptions-=m
set guioptions-=T
set guioptions-=r

