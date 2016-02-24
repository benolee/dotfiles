call plug#begin('~/.vim/bundle')
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'duff/vim-scratch'
Plug 'majutsushi/tagbar'
Plug 'vim-ruby/vim-ruby'
Plug 'zhaocai/GoldenView.Vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'scrooloose/syntastic'
Plug 'thoughtbot/pick.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes n \| ./install' }
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'pearofducks/ansible-vim'
call plug#end()

let mapleader = '\'
let localmapleader = '\'

set nowrap
set nocompatible
set scrolloff=3
set ai

set showcmd
set nobackup
set noswapfile
set number
set ruler

set nohlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

set visualbell t_vb=
set novisualbell

set backspace=indent,eol,start
set runtimepath=$VIMRUNTIME

syntax on
filetype on
filetype indent on

set t_RV=

set listchars=tab:»·,trail:·
set list

set ts=2
set sw=2
set expandtab

set virtualedit=block

set undolevels=1000

call plug#load('vim-buffergator')
call buffergator#CloseBuffergator()
map <Leader>b :BuffergatorToggle<CR>

" let g:goldenview__enable_default_mapping = 0
" nmap <localleader>s <Plug>GoldenViewSplit
nmap <localleader>s :vsplit<CR>

map <Leader>t :TagbarToggle<CR>

let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" nnoremap <Leader>p :call PickFile()<CR>
" nnoremap <Leader>s :call PickFileSplit()<CR>
" nnoremap <Leader>v :call PickFileVerticalSplit()<CR>
" nnoremap <Leader>t :call PickFileTab()<CR>
" nnoremap <Leader>b :call PickBuffer()<CR>
nnoremap <Leader>] :call PickTag()<CR>

let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }
nnoremap <Leader>p :FZF<CR>

" ===== Seeing Is Believing =====
" Assumes you have a Ruby with SiB available in the PATH
" Annotate every line
  nmap <leader>v :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>
" Annotate marked lines
  nmap <leader>n :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>
" Remove annotations
  nmap <leader>c :%!seeing_is_believing --clean<CR>
" Mark the current line for annotation
  nmap <leader>m A # => <Esc>
" Mark the highlighted lines for annotation
  vmap <leader>m :norm A # => <Esc>

