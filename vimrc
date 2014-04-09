"
" $Author: Mostafa Shahverdy 
" $URL: http://www.mostafa.info
" $Date: 2013-03-13 15:51:49 +0430 
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/ZoomWin'

" Not configured yet
"Plugin 'Lokaltog/powerline'
Plugin 'Lokaltog/vim-powerline'

" required by vim-session and YouCompleteMe
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Check Syntax based on file extenssions
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'

" Code Format
Plugin 'Chiel92/vim-autoformat'

" To open terminal inside VIM
Plugin 'vim-scripts/Conque-Shell'

" Instead of YouCompleteMe
Plugin 'AutoComplPop'

Plugin 'L9'
Plugin 'FuzzyFinder'
" Code completion
" This plugin needs to be compiled. 
" It requres vim-misc
" sudo apt-get install build-essential cmake
" sudo apt-get install python-dev
" cd ~/.vim/bundle/YouCompleteMe
" ./install.sh --clang-completer
" Notice: I compiled it without --clang-copletere to avoid extra download for
" my self atm ;)
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'ervandew/supertab'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html

" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"if has("gui_win32")
"set guifont=consolas:h10:cANSI
"endif

" to make :ص available for saving
cnoreabbrev ص w
cnoreabbrev W w
cnoreabbrev Q q

"Key to fullscreen one window
nmap <F12> :ZoomWin<cr>
nmap <F11> :TagbarToggle<cr>
nmap <F9>  :NERDTreeTabsToggle<cr>
"nmap <F8> :tabn<cr>
"nmap <F7> :tabp<cr>
nmap <F5>  :FufBuffer<cr>
nmap <F4>  :ConqueTermVSplit bash<cr>
"nmap <F3>  :Gsearch<cr>
nmap <F1>  :Autoformat<cr>

" make Y copy to the end of the line and not copy a whole line
map Y y$


" to make tabbar background invisable
hi TabLineFill cterm=bold gui=bold



"set guifont=Courier\ New\ 11
"set guifont=consolas

"autocmd VimEnter * NERDTree

"Line numbers
set number

"line wrap
set nowrap

"Mouse activation
set mouse=a

" Start the selection mode with Shift+Arrows/Home/End/PageUp/PageDown, and with
" the mouse
set selectmode=mouse,key

" Start the Visual/Selection mode with using Shift+Arrows/etc
set keymodel=startsel

"This will change directory on startup to the current file's directory
autocmd VimEnter * lcd %:p:h   

" change the color of current line
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
hi CursorLine cterm=NONE ctermbg=gray

"Background Color in Gui
"hi Normal guibg=#edeceb
hi Normal guibg=#000000


"custom Gui
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=e  "remove gui tabs and show builtin 
"set guioptions-=r  "remove right-hand scroll bar"

"Where to save Session
"let g:session_directory="~"

"Always save sessios //I don't know why this is not working :(
let g:session_autosave="yes"
let g:session_autoload="yes"
let g:session_default_to_last="true"

"autocmd VimLeave * mksession! "~/.vim/default.vim"
"autocmd VimEnter * OpenSession 



"hi Cursor ctermbg=black
"hi Normal ctermbg=darkgray


"Highlight the string we searched.
set hlsearch 

" Highlight the searched string, while typing.
set incsearch

"if has("autocmd")
"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"endif



" Tab spacing.
set tabstop=4 
set shiftwidth=4
set softtabstop=4

" Use tabs at the start of a line, spaces elsewhere.
set smarttab 

" in Visual mode select a text and them press <C-r> to replace it with some
" other text
" Tip: To replace text in a visually selected area,
" while text is selected pres ":"
" then s/gree/red/g
" it will be like '<,>'s/greenred/g 
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


"let g:SuperTabDefaultCompletionType = ""

" To prevent tabs have full path and show only file name
"set guitablabel=%t
set guitablabel=%N\.%t\ %M 

"to prevent showing arabic chars merged
set noarabicshape


" This is a very useful option to make + register the default one, so just use
" p to paste instead of "+p
set clipboard=unnamedplus

" NERDTree On right side
let g:NERDTreeWinPos = "right"

" Ctags command to open
let Tlist_Ctags_Cmd='/usr/bin/ctags'

" to prevent startup of NERDTre
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup=0

"short filename in powerline 
let g:Powerline_stl_path_style = 'relatve'

" Start fullscreen
if has("gui_running")
	" GUI is running or is about to start.
	" Maximize gvim window.
	set lines=100 columns=100
endif

" To prevent filename~ and .swp files in normal directories
"set backupdir=~/tmp
set nobackup
set noswapfile


" To make powerline be shown always
" 0: never
" 1: only if there are at least two windows (this one is the default)
" 2: always
" See :h laststatus for more info..
set laststatus=2


" To enable horisental scroll
set guioptions+=b

" To make terminal inside vim run faster by changig color range
let g:ConqueTerm_FastMode = 1

"let g:miniBufExplVSplit = 20


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change tabline to classic tabline in GVim
set tabline=%!MyTabLine()

function MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		" select the highlighting
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
		else
			let s .= '%#TabLine#'
		endif

		" set the tab page number (for mouse clicks)
		let s .= '%' . (i + 1) . 'T'

		" the label is made by MyTabLabel()
		let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	endfor

	" after the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" right-align the label to close the current tab page
	if tabpagenr('$') > 1
		let s .= '%=%#TabLine#%999Xclose'
	endif

	return s
endfunction

function MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	let buffer_count = tabpagewinnr(a:n, "$") 
	" just name of  buffer
	if buffer_count > 1
		return '/' . substitute(bufname(buflist[winnr - 1]), '^.*\/', '', ''). '['.buffer_count.']'
	else
		return '/' . substitute(bufname(buflist[winnr - 1]), '^.*\/', '', '')
	end if;
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"function! RunPhpcs()
	"let l:filename=@%
	"let l:phpcs_output=system('phpcsf --report=csv --standard=ZEND '.l:filename)
	"let l:phpcs_list=split(l:phpcs_output, "\n")
	"unlet l:phpcs_list[0]
	"cexpr l:phpcs_list
	""cwindow
	"copen
"endfunction

"set errorformat+="%f"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,"%m"
"command! Phpcs execute RunPhpcs()

let g:formatprg_php = "phpcbf"
let g:formatprg_args_expr_php = "--space-after-if --space-after-switch --space-after-while --space-before-start-angle-bracket --space-after-end-angle-bracket --one-true-brace-function-declaration --glue-amperscore --change-shell-comment-to-double-slashes-comment --force-large-php-code-tag --force-true-false-null-contant-lowercase --align-equal-statements --comment-rendering-style PEAR --equal-align-position 50 --padding-char-count 4"

