call plug#begin('~/.local/share/nvim/plugged')	" Plugins will be downloaded under the specified directory.

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

"AUTO-COMPLETE
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"CSS
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'

"JS
Plug 'justinj/vim-react-snippets'
Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug '907th/vim-auto-save'

Plug 'airblade/vim-gitgutter'

call plug#end()				" List ends here. Plugins become visible to Vim after this call.

"----- GENERAL SETTINGS-------
syntax enable
colorscheme darcula

set laststatus=2	"see the current mode, file name, file status, ruler, etc...2

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

"---- PLUGINS -------

"AUTO-SAVE
let g:auto_save = 1  " enable AutoSave on startup

"AIRLINE-THEME
let g:airline_theme='zenburn'


"CTRL-P search
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

"NERD TREE
let g:ctrlp_dont_split = 'NERD'

"ESLINT
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"AUTO-COMPLETE DEOPLETE
let g:deoplete#enable_at_startup = 1


