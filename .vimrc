" clipboard on selected
set guioptions=ai
" use xorg clipboard
set clipboard^=unnamedplus
" make it vim
set nocompatible
" don't use swap
set noswapfile
" use numbers
set number
" backspace in edit
set backspace=2
" change viminfo location
set viminfo+=n~/.vim/viminfo
" add search highlighting
set hlsearch

" clear trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'digitaltoad/vim-jade'

Plugin 'wavded/vim-stylus'

Plugin 'idris-hackers/idris-vim'

Plugin 'rust-lang/rust.vim'

"Plugin 'eagletmt/neco-ghc'

Plugin 'eagletmt/ghcmod-vim'
Plugin 'Shougo/vimproc.vim'

Plugin 'kchmck/vim-coffee-script'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

filetype plugin indent on
syntax on

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg)|target|dist)$',
  \ 'file': '\v\.(class|so)$',
  \ }
