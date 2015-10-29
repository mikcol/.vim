"set nocompatible              " be iMproved, required
filetype off                  " required
autocmd! bufwritepost .vimrc source %
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'
" Solarized colorscheme
Bundle 'altercation/vim-colors-solarized'
" Syntax checker
Bundle 'scrooloose/syntastic'
" Snipppets plugin for faster code generation
Bundle 'SirVer/ultisnips'
" Snips
Plugin 'honza/vim-snippets'
" Youcompleteme autocomplete
Bundle 'Valloric/YouCompleteMe'
" NERDTree
Bundle 'scrooloose/nerdtree'
" Vim latex plugin
Plugin 'lervag/vimtex'
" Status line plugin
Plugin 'bling/vim-airline'
" File finder
Plugin 'kien/ctrlp.vim'
" Jedi-Vim
"Plugin 'davidhalter/jedi-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Ultisnip config
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" Open NERDTree automatically
au VimEnter *  NERDTree

" Check if 256 color mode is enabled, if not, enable it
if $COLORTERM == 'gnome-terminal'
	  set t_Co=256
  endif
" line numbers
set number
" line wrapping
"set nowrap
set pastetoggle=<F2>
set clipboard=unnamed
set mouse=a
set bs=2

let mapleader = ","
let maplocalleader = "\\"

" Enable syntax highlighting
syntax enable
" Python specific settings
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set tw=89
set nowrap
set fo-=t
set colorcolumn=90
highlight ColorColumn ctermbg=233
filetype indent on 

"Tabs
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
" Solarized these settings
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Mark cursor line and column
set nocursorline
set nocursorcolumn
syntax sync minlines=256"
" Speed up vim 
set re=2
