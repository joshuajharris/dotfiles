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
set colorcolumn=80 " show a column at 80 chars
set cursorline      " highlight current line
set laststatus=2    " always display the status line
set noshowmode      " Don't show current vim mode in status line -> e.g. -- INSERT --
set number          " show line numbers
set ruler           " show current position at the right side of statusline
set scrolloff=5     " keep at least 5 lines above/below
set showcmd         " show command in bottom bar
set sidescroll=1    " smoother horizontal scrolling
set sidescrolloff=5 " keep at least 5 lines left/right
set splitbelow      " create new splits below
set splitright      " create new splits to the right
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

set updatetime=300 " You will have bad experience for diagnostic messages when it's default 4000.
set signcolumn=yes " always show signcolumns
set cmdheight=2 " Better display for messages

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

set termguicolors

"=============================================================================================
" Plugins
"=============================================================================================

call plug#begin('~/.vim/plugged')

" ====================
" Language/File Syntax
" ====================
Plug 'andreshazard/vim-freemarker'
Plug 'sheerun/vim-polyglot'

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
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'junegunn/vim-peekaboo'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'ludovicchabant/vim-gutentags'

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

let NERDSpaceDelims=1

let g:jsdoc_enable_es6 = 1

let g:javascript_plugin_jsdoc = 1

nmap <silent> <leader>jsd :JsDoc<CR>

colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'typescript': ['tsserver', 'prettier'],
\}

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\}

let g:ale_fix_on_save = 1

let g:ale_open_list = 0
" let g:ale_sign_error =
" let g:ale_sign_warning =

let g:instant_markdown_autostart = 0
let g:instant_markdown_allow_external_content = 1

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

"=============================================================================================
" COC
"=============================================================================================
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set complete+=kspell " Enable word completion
au BufRead,BufNewFile,BufReadPost *.json set syntax=json

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-git',
  \ 'coc-svg',
  \ 'coc-angular',
  \ 'coc-xml',
  \ 'coc-markdownlint',
\]
