filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/vundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'joshdick/onedark.vim'

call vundle#end()
"

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
colorscheme onedark
" clear background
hi Normal guibg=none

noremap! <A-Space> <Esc>
noremap <A-Space> <Esc>

" save and exit
noremap <C-s> :w<CR>
noremap <C-d> :qa<CR>
noremap <C-w> :q<CR>

" copy paste
nnoremap <C-c> yy
vnoremap <C-c> y
noremap <C-v> P
