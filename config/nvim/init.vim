filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/vundle')

Plugin 'VundleVim/Vundle.vim'

call vundle#end()

filetype plugin indent on
syntax on

" clipboard on selected
set guioptions=a
" use xorg clipboard
set clipboard+=unnamedplus
" don't use swap
set noswapfile
" use numbers
set number
" use fancy gui colors
set termguicolors

map <A-Space> <Esc>
map! <A-Space> <Esc>
