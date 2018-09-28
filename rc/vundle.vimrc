"
" $Author: Mostafa Shahverdy 
" $URL: http://www.mostafa.info
" $Date: 2013-03-13 15:51:49 +0430 
"
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#rc()
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/ZoomWin'

"Plugin 'jszakmeister/vim-togglecursor'

" Not configured yet
"Plugin 'Lokaltog/powerline'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'bling/vim-airline'

" required by vim-session and YouCompleteMe
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-session'

" Check Syntax based on file extenssions
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-surround'

" Code Format
"Plugin 'Chiel92/vim-autoformat'

" To open terminal inside VIM
"Plugin 'vim-scripts/Conque-Shell'

" Instead of YouCompleteMe
"Plugin 'AutoComplPop'


" tmux panes plus vim windows together
Plugin 'christoomey/vim-tmux-navigator'

"Plugin 'flazz/vim-colorschemes'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'kalafut/vim-taskjuggler'

" Optional:
Plugin 'honza/vim-snippets'



" Code completion
" This plugin needs to be compiled. 
" It requres vim-misc
" sudo apt-get install build-essential cmake
" sudo apt-get install python-dev
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh --clang-completer
" Notice: I compiled it without --clang-copletere to avoid extra download for
" my self atm ;)
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'ervandew/supertab'


call vundle#end()            " required
filetype plugin indent on    " required
