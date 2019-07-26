"
" $Author: Mostafa Shahverdy 
" $URL: http://www.mostafa.info
" $Date: 2013-03-13 15:51:49 +0430 
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font for NeovimGtk
if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font', 'Monaco 11')
endif

"Line numbers
set number

"line wrap
set nowrap

"Highlight the string we searched.
set hlsearch 

" Highlight the searched string, while typing.
set incsearch

" Tab spacing.
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab

"to prevent showing arabic chars merged
set noarabicshape


" This is a very useful option to make + register the default one, so just use
" p to paste instead of "+p
set clipboard=unnamedplus

" To prevent filename~ and .swp files in normal directories
"set backupdir=~/tmp
set nobackup
set noswapfile

" To make cursor stays in the middle of the screen
set scrolloff=300

" To change the leader
let mapleader = ","

" colorscheme 
colorscheme visualstudio


" to enable snipMate
imap <Tab> <Plug>snipMateNextOrTrigger
smap <Tab> <Plug>snipMateNextOrTrigger
filetype plugin on

