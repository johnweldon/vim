runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:pathogen_disabled = []
if has("win32") || !has("python")
    call add(g:pathogen_disabled, 'youcompleteme')
endif

call pathogen#infect()
call pathogen#helptags()

set nocompatible

set autoread
set autowrite
set nobomb
set encoding=utf8

set autoindent
set copyindent
set nocindent
set expandtab
set shiftround
set smartindent
set smarttab

set hlsearch
set incsearch

set scrolloff=5
set scrolljump=5

set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=0
set backspace=indent,eol,start

set cmdheight=2
set laststatus=2
set shortmess=atTAI
set modeline
set nowrap
set number
set ruler
set vb t_vb="<Esc>|10f"
set background=dark
set sidescroll=15
set sidescrolloff=5
set showbreak=\ \ +\  
set linebreak
set colorcolumn=+1
set statusline=[%n]\ %<%f\ %h%m%r\ %q%=\ 0x%B\ %b\ \ \ %-14.(%l,%c%V%)\ %o\ %P

hi IncSearch cterm=underline
hi Search cterm=underline ctermfg=1 ctermbg=0
hi LineNr cterm=NONE ctermfg=6

set formatprg=indent
set grepprg=grep\ -n
set tags=./tags
set viminfo=""

set matchpairs+=<:>
set printoptions=header:0,paper:letter
set listchars+=precedes:<,extends:>

set noswapfile
set directory=

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete


if has("win32")
    set makeprg=nmake
else
    set makeprg=make
endif

if version >= 700
    set diffopt=vertical
endif


let c_comment_strings=1

let g:godef_split=0
let g:godef_same_file_in_same_window=1

set nocursorline
set synmaxcol=128
syntax on

vmap <silent> <F6> :!sort<CR>

if filereadable(findfile("~/.local.vimrc"))
    source ~/.local.vimrc
endif
