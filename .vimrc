set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set list
set listchars=tab:▸-,trail:-,eol:¬

set nocompatible        " use vim defaults
set scrolloff=3         " keep 3 lines when scrolling
set ai                  " set auto-indenting on for programming

set showcmd             " display incomplete commands
set nobackup            " do not keep a backup file
set number              " show line numbers
set ruler               " show the current row and column

set hlsearch            " highlight searches
set incsearch           " do incremental searching
set showmatch           " jump to matches when entering regexp
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

set backspace=indent,eol,start  " make that backspace key work the way it should

syntax on               " turn syntax highlighting on by default
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type

set background=dark

set t_Co=256            " set colors to 256
colorscheme vividchalk  " textmate-like color scheme

map <C-o> :tabnew 
map <C-k> :tabprev<CR> 
map <C-j> :tabnext<CR>

