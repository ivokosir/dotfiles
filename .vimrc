set go=ai
set clipboard^=unnamedplus
set nocompatible
set noswapfile
set nu
set backspace=2

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

Plugin 'raichoo/haskell-vim'

call vundle#end()

filetype plugin indent on
syntax on
