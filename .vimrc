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

set go="aei"
set nocompatible
set noswapfile
set nu
set clipboard^=unnamed,unnamedplus
set backspace=2

autocmd BufWritePre * :%s/\s\+$//e
