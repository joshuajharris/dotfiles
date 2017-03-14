set tabstop=2       " set visual tab to 2 spaces
set shiftwidth=2    " indenting is 2 spaces when using <<, >>
set autoindent
set smartindent
set softtabstop=2   " set tab to 4 spaces when editing
set expandtab       " turns tab into spaces

set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line

filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu

set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" move vertically by visual line, doesn't ignore line wrap
nnoremap j gj
nnoremap k gk

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

set backspace=indent,eol,start

" jk is escape
inoremap jk <esc>

set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle' 
Bundle 'vim-scripts/AutoComplPop'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
"Bundle 'scrooloose/syntastic'

map <C-n> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

filetype plugin indent on 
syntax on
