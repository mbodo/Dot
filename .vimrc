" Notes {
"
"  Vim configuration file
" 
"
" }

" Pathogen plugin {
    call pathogen#infect()
    " call pathogen#runtime_append_all_bundles()
    " call pathogen#helptags()
" }

" Basic {
"
   set nocp
"
" }

" General {
"
   filetype plugin on " Automatically detect file types
   filetype plugin indent on
   set nofoldenable
"
" }

" Vim UI {
   set number
   set background=dark
   syntax on
   colorscheme solarized
   highlight Pmenu guibg=brown gui=bold
   set gfn=Monospace\ Regular\ 8 " Set font family\ style\ size
   set guioptions-=T
   set guioptions-=L
   set guioptions-=r
   set guioptions-=m

" }

" Formatting  {
"
    set expandtab
    set textwidth=79
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set listchars=tab:▸\ ,eol:¬
"
" }
 
" Tags {
" 
    set tags+=~/.vim/systags
"
" }

" Mappings  {
" 
   " Save file with Ctrl+s normal mode
   nmap <C-s> :w<CR>
   " Save file with Ctrl+s visual mode
   vmap <C-s> <Esc><c-s>gv
   " Save file with Ctrl+s insert mode
   imap <C-s> <Esc><c-s>
   " Bubble down line
   nmap <C-Up> ddkP
   " Bubble up line
   nmap <C-Down> ddp
   " Bubble up multiple lines
   vmap <S-Up> xkP`[V`]
   " Bubble down multiple lines
   vmap <S-Down> xp`[V`]
   " Select word as block
   nmap ,w viw
   " Select between parenthesis as block
   nmap ,b vib
   " Surround shortcut to wrap text object with some charcter
   nmap ,v ysiw
   " Surround shortcut to change character which wrap text object
   nmap ,c cs'
   " Open edit for current home directory
   map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
   " Change directory, use current file directory
   map ,cd :cd %:p:h <CR>
   " Change directory, use current file directory
   map ,ct :cd %:p:h <CR>
   " Make backspace work in normal
   nmap <BS> X
   " Comment out
   vmap <F3> :s/^/\/\//<CR>
   " Uncomment
   vmap <F4> :s/^\/\///<CR>
   " Omni completion
   inoremap <C-space> <C-x><C-o>
   " Ctags
   " noremap <F12> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q %<cr>
   " inoremap <F12> <Esc>:!ctags -R --c-kinds=+p --fields=+iaS --extra=+q %<cr>
   " List buffers
   nnoremap <F5> :buffers<CR>:buffer<Space>
   " Change to next buffer
   nnoremap <C-right> :bn<CR>
   " Change to previous buffer
   nnoremap <C-left> :bp<CR>
   " working with split windows
   nnoremap <S-h> <C-w>h
   nnoremap <S-j> <C-w>j
   nnoremap <S-k> <C-w>k
   nnoremap <S-l> <C-w>l
   " Double j to <Esc>
   inoremap jj <ESC>
   " Ctrl+PgUp/Dn - Move between quickfix marks
   nnoremap <C-PageDown> :cnext<CR>
   nnoremap <C-PageUp> :cprev<CR>
   " Open Taglist window
   nnoremap <silent> <F8> :TlistToggle<CR>
   " Tab navigation
   nmap <C-S-[> gT
   nmap SSA :wa<CR>:mksession!
   nmap SO :wa<CR>:so
"
" }

" Variables {
"
    " Taglist plugin variables
    " let Tlist_Ctags_Cmd='/usr/bin/ctags'	
    " let Tlist_Process_File_Always=1
    " let Tlist_Show_One_File=1
    " let Tlist_Show_Menu=1
    " let Tlist_Auto_Update=1
    " let Tlist_Compact_Format=1
    " let Tlist_Display_Tag_Scope=1
"
" }

" Sessions {
"
    set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
"
" } 

" Autocommands {
"
    au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
    " Omnicompletion
    au FileType php set omnifunc=phpcomplete#CompletePHP " PHP omni-completion
    au FileType py set omnifunc=pythoncomplete#Complete " Python omni-completion
    au FileType rb set omnifunc=rubycomplete#Complete " Ruby omni-completion
    au FileType c set omnifunc=ccomplete#Complete " C omni-completion
    set completeopt=menuone,menu,longest,preview
"
" }


" FuzzyFinder plugin {
" }
