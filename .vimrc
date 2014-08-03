" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 

set nocompatible
filetype off  

set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

filetype plugin indent on     

"репозитории на github
Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-leiningen'
Plugin 'vim-scripts/paredit.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'ecomba/vim-ruby-refactoring'	  "http://justinram.wordpress.com/2010/12/30/vim-ruby-refactoring-series/
Plugin 'vim-scripts/ScrollColors'	  ":SCROLL
Plugin 'tpope/vim-endwise'

call vundle#end()

"репозитории vim/scripts
"Bundle 'L9'

"git репозитории (не на github)
"Bundle 'git://git.wincent.com/command-t.git'

"локальные git репозитории(если работаете над собственным плагином)
"Bundle 'file:///Users/gmarik/path/to/plugin'

set nu 
set sw=2 
set sts=2 

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
