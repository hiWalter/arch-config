""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            Vim-Plug
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
call plug#begin('~/.vim/plugged')
    " ===
	" === Language support protocal
    " ===
	Plug 'fatih/vim-go'	
	Plug 'rust-lang/rust.vim'
	
    " ===
	" === Tools for coding
    " ===
	Plug 'scrooloose/nerdtree'
	" Plug 'tpope/vim-fugitive'			            	" fugitive
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-surround'
    Plug 'gcmt/wildfire.vim'
    Plug 'jiangmiao/auto-pairs'


	Plug 'w0rp/ale'						                " ale 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		" coc.vim
	" Plug 'junegunn/fzf'					            " fuzzy file finder	
	" Plug 'honza/vim-snippets'
	Plug 'terryma/vim-multiple-cursors'
call plug#end()

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                        BASIC CONFIGURATION ::
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
" numbers
set number  		relativenumber

"
set wildmenu
set path+=**
set encoding=UTF-8
set mouse=ar

" case
set smartcase 		ignorecase

" folder
" set foldenable  	foldmethod=marker 	foldmarker={{{,}}}

" Search
set hlsearch        incsearch

" cancel swapfile
set noswapfile

" brakets
set showmatch

" cursor setting
set cursorline

set so=7

set ruler

" a more powerful backspace?
" set backspace=indent,eol,start

"" Tab and indentation
" Tab space 1 tab == 4 spaces
" use softtabstop=4 if you want to replace tab with space
set expandtab       smarttab
set shiftwidth=4    tabstop=4

set autoindent      smartindent
set cindent         cinoptions=g-1


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                     Plugin setting details
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

"""
""" COC.set
"""


" MY vim runtime path(Mac) : $VIMRUNTIME=/usr/share/vim/vim82

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/peaksea.vim

try
	set undodir=~/.config/nvim/undodir undofile
catch
endtry

" Key Binding in Vim
let mapleader = ","

noremap Q :q<CR>
noremap W :w<CR>

map R :source $MYVIMRC<CR>
map <leader>h :noh<CR>
map <leader>s :vsplit<CR>
map <leader>o o<ESC>
map <leader>t :tabe<CR>

noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

imap jk <Esc>


"===
"=== coc.nvim
"===
" No backup setting 
set nobackup        nowritebackup   
" Show less in Pmenu
set updatetime=100
set shortmess+=c

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-ccls',
    \ 'coc-html',
    \ 'coc-css',
    \ ]

inoremap <silent><expr> <c-W>o coc#refresh()

"===
"=== NERDTree
"===
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
map <leader>n :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"===
"=== lightline
"===
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
