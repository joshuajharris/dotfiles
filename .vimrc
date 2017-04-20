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
filetype plugin on

"---------- PLUGINS ----------"

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes' " Airline Plugins
Plug 'junegunn/fzf' " fuzzysearch
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} " tree explorer plugin for vim
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'maksimr/vim-jsbeautify'
" Plug 'ryanoasis/vim-devicons'

" Vim Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'suan/vim-instant-markdown'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
set encoding=utf8
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
