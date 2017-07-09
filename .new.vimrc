set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vim
syntax on
set nu
set shortmess+=c
let python_highlight_all=1

" Autocommands
au BufNewFile,BufRead *.py 
	 \ set tabstop=4 |
	 \ set softtabstop=4 |
	 \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_add_preview_to_completeopt=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-colors-solarized
set background=dark
colorscheme solarized

