set shell=sh
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" theme
Plugin 'joshdick/onedark.vim'
" required by ghcmod-vim
Plugin 'Shougo/vimproc.vim'
" cool haskell stuff
Plugin 'eagletmt/ghcmod-vim'

call vundle#end()
filetype plugin indent on

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
hi Normal guibg=#21242b
set guiheadroom=0

let mapleader = "\<Space>"

noremap <leader> <nop>
noremap <Backspace> <nop>

noremap! <A-Space> <Esc>
noremap <A-Space> <Esc>

" save and exit
noremap! <C-s> <Esc>:w<CR>
noremap <C-s> :w<CR>
noremap! <C-d> <Esc>:qa<CR>
noremap <C-d> :qa<CR>
noremap! <C-w> <Esc>:q<CR>
noremap <C-w> :q<CR>

" copy-paste
nnoremap <C-x> dd
vnoremap <C-x> d
nnoremap <C-c> yy
vnoremap <C-c> y
noremap <C-v> P
" we need to remap block select because of paste
noremap <A-v> <C-v>

" undo (vim can't differentiate <C-*> and <C-S-*>
noremap <C-z> u

" configure title to look like: Vim /path/to/file
autocmd VIMResized * set title titlestring=%f\ %a%r%m titlelen=70

"Sets tabs to spaces and defines width of tab to 2 spaces and automatic indentation
set expandtab
set tabstop=2
set shiftwidth=2
set si

" show hidden characters
set list
set listchars=tab:▸\ ,trail:·,conceal:·
