set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Supertab
Plugin 'ervandew/supertab'

" Airline
Plugin 'bling/vim-airline'

" Airline Themes
Plugin 'vim-airline/vim-airline-themes'

" Tmuxline
Plugin 'edkolev/tmuxline.vim'

" Bufferline
Plugin 'bling/vim-bufferline'

" surround
Plugin 'tpope/vim-surround'

" CTRLP
Plugin 'kien/ctrlp.vim'

" Javascript Syntax
Plugin 'jelera/vim-javascript-syntax'

" Pangloss vim Javscript
Plugin 'pangloss/vim-javascript'

" emmet for vim
Plugin 'mattn/emmet-vim'

" HTML5 syntax
Plugin 'othree/html5-syntax.vim'

" Slim template syntax highlighting
Plugin 'slim-template/vim-slim.git'

" Tpope Endwise
Plugin 'tpope/vim-endwise.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colo detailed

syntax on
filetype indent on

set nocompatible
set showmatch
set autoindent
set smartindent
set smarttab
set expandtab
set number
set incsearch
set laststatus=2
set t_Co=256
set noswapfile
set scrolloff=10
set pastetoggle=<F2>

au BufWritePre * :%s/\(\S\)\s\+$/\1/e

au Filetype * set ts=2 sts=2 sw=2
au FileType python set ts=4 sts=4 sw=4 nosmartindent
au FileType ruby set ts=2 sts=2 sw=2 nosmartindent
au FileType php set ts=2 sts=2 sw=2
au FileType html set ts=2 sts=2 sw=2
au FileType javscript set ts=2 sts=2 sw=2
au FileType xhtml set ts=2 sts=2 sw=2
au FileType css set ts=2 sts=2 sw=2
au FileType sh set ts=2 sts=2 sw=2 nosmartindent
au FileType xml set ts=2 sts=2 sw=2

map - :m .+1<enter>
map _ :m .-2<enter>

let python_highlight_all = 1

:command WQ wq
:command Wq wq
:command W w
:command Q q

:python import sys; sys.path.append("/Library/Python/2.7/site-packages")

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_theme='base16_colors'

" Tmuxline configuration
let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" Bufferline configuration
let g:bufferline_echo = 0
