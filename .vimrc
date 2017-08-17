call plug#begin('~/.vim/plugged')	" Plugins will be downloaded under the specified directory.

" Declare the list of plugins.
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'blueshirts/darcula'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'

Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'

"CSS
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'

Plug '907th/vim-auto-save'

Plug 'airblade/vim-gitgutter'
Plug 'eslint/eslint'

call plug#end()				" List ends here. Plugins become visible to Vim after this call.

"----- GENERAL SETTINGS-------
syntax enable
colorscheme darcula

set laststatus=2
let g:airline_theme='zenburn'
let g:auto_save = 1  " enable AutoSave on startup

set number		"Show line numbers
set autoindent		"Auto-indent new lines
set shiftwidth=2	"Number of auto-indent spaces
set smartindent		"Enable smart-indent
set smarttab		"Enable smart-tabs
set softtabstop=2	"Number of spaces per Tab

set ruler		"Show row and column ruler information
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	"Backspace behaviour

"Search
set ignorecase	"case insensitive
set smartcase	"use case if any caps used 
set incsearch	"show match as search proceeds
set hlsearch	"search highlighting

"CTRL-P search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"NERD TREE
let g:ctrlp_dont_split = 'NERD'
