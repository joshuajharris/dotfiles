" ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄
"███    ███ ███  ▄██▀▀▀███▀▀▀██▄
"███    ███ ███▌ ███   ███   ███
"███    ███ ███▌ ███   ███   ███
"███    ███ ███▌ ███   ███   ███
"███    ███ ███  ███   ███   ███
"███    ███ ███  ███   ███   ███
" ▀██████▀  █▀    ▀█   ███   █▀

"=============================================================================================
" General Settings
"=============================================================================================

" base
set nocompatible            " vim, not vi
syntax on                   " syntax highlighting
filetype plugin indent on   " load plugins and indent files base on filetype

" interface
set background=dark " tell vim what the background color looks like
set colorcolumn=100 " show a column at 100 chars
set cursorline      " highlight current line
set laststatus=2    " enables airline on open
set noshowmode      " airline already shows mode
set number          " show line numbers
" set relativenumber  " show relative line numbers
set ruler           " show current position at the bottom"
set scrolloff=5     " keep at least 5 lines above/below
" set shortmess+=aAIsT " disable welcome screen and other messages
set showcmd         " show command in bottom bar
set sidescroll=1    " smoother horizontal scrolling
set sidescrolloff=5 " keep at least 5 lines left/right
set splitbelow      " create new splits below
set splitright      " create new splits to the right
" set termguicolors   " enable true colors
set wildmenu        " visual autocomplete for command menu

" whitespace
set expandtab       " turns tab into spaces
set shiftwidth=2    " indenting is 2 spaces when using <<, >>
set softtabstop=2   " set tab to 4 spaces when editing
set tabstop=2       " set visual tab to 2 spaces

" text appearance
set list            " show invisible characters
set listchars=tab:>·,trail:·,nbsp:¬  " but only show useful characters

" searching
set hlsearch        " highlight matches
set ignorecase      " set case insensitive searching
set incsearch       " search as characters are entered
set showmatch       " highlight matching [{()}]
set smartcase       " case sensitive searching when not all lowercase

set backspace=indent,eol,start

" background processes
set autoindent      " copy indentiation from the previous line for new line
set autoread        " update file when changed outside of vim
set nobackup        " don't save backups
set noswapfile      " no swapfiles
set nowritebackup   " don't save a backup while editing

set encoding=utf8

"=============================================================================================
" Keys
"=============================================================================================

let mapleader = "\\"

" jk is escape
inoremap jk <esc>

" move vertically by visual line, doesn't ignore line wrap
nnoremap j gj
nnoremap k gk

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" select all
nnoremap <leader>a ggVG<CR>

"=============================================================================================
" Plugins
"=============================================================================================

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes' " Airline Plugins
Plug 'junegunn/fzf' " fuzzysearch
Plug 'fatih/vim-go' " golan support
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'
Plug 'ekalinin/Dockerfile.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} " tree explorer plugin for vim
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'maksimr/vim-jsbeautify'
Plug 'ryanoasis/vim-devicons'

" Vim Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'suan/vim-instant-markdown'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1

" iterm has a non-ascii character font setting
"set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h11

colorscheme gruvbox
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\}
