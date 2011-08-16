set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set list
set listchars=tab:▸-,trail:-,eol:¬
let mapleader = ","


set nocompatible               " use vim defaults
set scrolloff=3                " keep 3 lines when scrolling
set ai                         " set auto-indenting on for programming

set showcmd                    " display incomplete commands
set nobackup                   " do not keep a backup file
set number                     " show line numbers
set ruler                      " show the current row and column
set noswapfile

set nohlsearch                 " don't highlight searches
set incsearch                  " do incremental searching
set showmatch                  " jump to matches when entering regexp
set ignorecase                 " ignore case when searching
set smartcase                  " no ignorecase if Uppercase char present

set visualbell t_vb=           " turn off error beep/flash
set novisualbell               " turn off visual bell

set backspace=indent,eol,start " make that backspace key work the way it should

syntax on                      " turn syntax highlighting on by default
filetype on                    " detect type of file
filetype indent on             " load indent file for specific file type

map <C-o> :tabnew 
map <C-k> :tabprev<CR> 
map <C-j> :tabnext<CR>

set background=dark

if has('gui_running')
  set guifont=Inconsolata\ 13
  colorscheme solarized
  set guioptions-=m              " Remove menu bar
  set guioptions-=T              " Remove toolbar
  set guioptions-=r            " Remove vertical scrollbar
  set lines=43 columns=143    " Start gvim maximized
else
  set t_Co=256
  syntax on
  set hlsearch
  colorscheme railscasts
endif

