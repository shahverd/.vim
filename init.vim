" $Author: Mostafa Shahverdy 
" $URL: http://www.mostafa.info
" $Date: 2013-03-13 15:51:49 +0430 
"
"

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
source ~/.vim/rc/vundle.vimrc

call vundle#end()            " required
filetype plugin indent on    " required



source ~/.vim/rc/keybindings.vimrc
source ~/.vim/rc/general.vimrc


