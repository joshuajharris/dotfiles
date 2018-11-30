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
set colorcolumn=80 " show a column at 100 chars
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

" ====================
" Language/File Syntax
" ====================
Plug 'fatih/vim-go' " golan support
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'cakebaker/scss-syntax.vim'
Plug 'sheerun/vim-polyglot'
Plug 'leafo/moonscript-vim'
Plug 'ekalinin/Dockerfile.vim'

" ======
" Theme
" ======
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes' " Airline Plugins
Plug 'gorodinskiy/vim-coloresque'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} " tree explorer plugin for vim
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" ==========
" Formatting
" ==========
Plug 'nathanaelkane/vim-indent-guides'
Plug 'heavenshell/vim-jsdoc'
Plug 'dhruvasagar/vim-table-mode'
Plug 'maksimr/vim-jsbeautify'

" =========
" Utilities
" =========
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'junegunn/fzf' " fuzzysearch
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Raimondi/delimitMate'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wellle/tmux-complete.vim'

" ============
" Vim Markdown
" ============
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'suan/vim-instant-markdown'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:vim_markdown_folding_disabled = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline#extensions#tabline#enabled = 1

let NERDSpaceDelims=1

" iterm has a non-ascii character font setting
"set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h11

let g:jsdoc_enable_es6 = 1

nmap <silent> <leader>jsd :JsDoc<CR>

colorscheme gruvbox
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'typescript': ['tslint'],
\}

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'typescript': ['tslint', 'prettier'],
\   'javascript': ['eslint', 'prettier'],
\}

let g:ale_fix_on_save = 1

let g:instant_markdown_autostart = 0
let g:instant_markdown_allow_external_content = 1

let g:ale_open_list = 0
