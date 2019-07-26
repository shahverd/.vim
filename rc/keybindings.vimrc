


" $Author: Mostafa Shahverdy 
" $URL: http://www.mostafa.info
" $Date: 2013-03-13 15:51:49 +0430 
"
"
" to make :ص available for saving
cnoreabbrev ص w
cnoreabbrev W w
cnoreabbrev Q q

nnoremap ش a	
nnoremap ذ b	
nnoremap ز c	
nnoremap ی d	
nnoremap ث e	
nnoremap ب f	
nnoremap ل g	
nnoremap ا h	
nnoremap ه i	
nnoremap ت j	
nnoremap ن k	
nnoremap م l	
nnoremap پ m	
nnoremap د n	
nnoremap خ o	
nnoremap ح p	
nnoremap ض q	
nnoremap ق r	
nnoremap س s	
nnoremap ف t	
nnoremap ع u	
nnoremap ر v	
nnoremap ص w	
nnoremap ط x	
nnoremap غ y	
nnoremap ظ z	
nnoremap ؤ A	
nnoremap ‌ B
nnoremap ژ C	
nnoremap ي D	
nnoremap ٍ E	
nnoremap إ F	
nnoremap أ G	
nnoremap آ H	
nnoremap ّ I	
nnoremap ة J	
nnoremap » K	
nnoremap « L	
nnoremap ء M	
nnoremap ٔ N	
nnoremap ] O	
nnoremap [ P	
nnoremap ْ Q	
nnoremap ً R	
nnoremap ئ S	
nnoremap ُ T	
nnoremap َ U	
nnoremap ٰ V	
nnoremap ٌ W	
nnoremap ٓ X	
nnoremap ِ Y	
nnoremap ك Z	
nnoremap ۰ 0	
nnoremap ! !	
nnoremap ٬ @	
nnoremap ٫ #	
nnoremap ﷼ $	
nnoremap ٪ %	
nnoremap × ^	
nnoremap ، &	

"Key to fullscreen one window
"nmap <F12> :ZoomWin<cr>
nmap <F12> :tabnew %<cr>
nmap <F11> :TagbarToggle<cr>
"nmap <F9>  :NERDTreeToggle<cr>
"nmap <F9>  :NERDTreeToggle<cr>

" For Nerdtree to be opened on current window
"nmap <F9>  :e .<cr>
nmap <F9>  :Ranger<cr>

"nmap <F8> :tabn<cr>
"nmap <F7> :tabp<cr>
"nmap <F8>  :bn!<cr>
"nmap <F7>  :bp!<cr>


"nmap <M-l>  :bn!<cr>
"nmap <M-h>  :bp!<cr>

nmap gl    :bn!<cr>
nmap gh    :bp!<cr>

nmap gbd  :bp<bar>sp<bar>bn<bar>bd<cr>
"nmap gf  :FufBuffer<cr>
nnoremap <silent><C-p> :CtrlSpace O<CR>
"nmap gf  :BufferSelect<cr>

"nmap <F4>  :ConqueTermVSplit bash<cr>
"nmap <F3>  :%s///ign
nmap  <F3>  :silent grep "<C-R><C-W>" -r -I  . <CR>:cw<CR>
"nmap <F1>  :Autoformat<cr>
"nmap <F2>  :YcmDiags<cr>
"nmap <F1>  :YcmCompleter GoToDefinitionElseDeclaration<cr>

" make Y copy to the end of the line and not copy a whole line
map Y y$


" To move through blocks of code using [[ ]] [] ][
map [[ ?{<cr>:nohl<cr>
map ][ /{<cr>:nohl<cr>
map ]] /}<cr>:nohl<cr>
map [] ?}<cr>:nohl<cr>

" To FORCE myself not to use some keys
" to disable in Escape Mode
map <Left>      <Nop>
map <Right>     <Nop>
map <Up>        <Nop>
map <Down>      <Nop>

map <PageUp>    <Nop>
map <PageDown>  <Nop>
map <Home>      <Nop>
map <End>       <Nop>
map <Insert>    <Nop>
map <Del>       <Nop>


" To Disable them in InsertMode
imap <Left>      <Nop>
imap <Right>     <Nop>
imap <Up>        <Nop>
imap <Down>      <Nop>

imap <PageUp>    <Nop>
imap <PageDown>  <Nop>
imap <Home>      <Nop>
imap <End>       <Nop>
imap <Insert>    <Nop>
imap <Del>       <Nop>

imap <Left>      <Nop>
imap <Right>     <Nop>
imap <Up>        <Nop>
imap <Down>      <Nop>

imap <PageUp>    <Nop>
imap <PageDown>  <Nop>
imap <Home>      <Nop>
imap <End>       <Nop>
imap <Insert>    <Nop>
imap <Del>       <Nop>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" in Visual mode select a text and them press <C-r> to replace it with some
" other text
" Tip: To replace text in a visually selected area,
" while text is selected pres ":"
" then s/gree/red/g
" it will be like '<,>'s/greenred/g 
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


"let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>


"tnoremap <C-h> <C-\><C-n><C-w>h
"tnoremap <C-j> <C-\><C-n><C-w>j
"tnoremap <C-k> <C-\><C-n><C-w>k
"tnoremap <C-l> <C-\><C-n><C-w>l
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
