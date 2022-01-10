"===		 :::::::::::::::::                    ｨ
"===　　 　 　 　!:::::::::::::::      　            /!
"===　　　　　　 i::::::::::::::    　   _'"ﾞﾞﾞﾞﾞ"''/ l
"===		  |::::::::::::	      _'  ....     /  l
"===　 　 　 　 　!:::::::::::: 　,,,ｒ ."    ゞ、　  ヾ
"===　　　　　　　|:::::::::,,-''''""　';:ﾐ;    〉   .:ﾐ
"===　 　 　 　 　 i::::;:'　　 　 　.::ﾐ     　　 .::ﾐ
"===　　　　　　 　ﾚ':.　　　　, '""''-,,_　　てlﾌ=====i~i＝ニニ0
"===　　　　　　　 ﾐ:::　　　  ﾐ  　　　  ）ニｰ'"tｭi三三iﾐ'"ゞ二≡≡ニニ二二()
"===　　　　　　　ﾐ:::　 　 ''""ヽi i i j'＿ﾉﾉーi・￣二,ﾐ　　ミ──’
"===　　　　　 　ﾐ::　　　、　　　'"'''"ﾐ￣     └─---'' '''''"
"===　　　　　　彡:.　 　　ヽ:.　 　  '"⌒'"⌒	  ::::\　  ＼"'-,; .
"===　　　 　　 ﾍ:::..　　　ﾉ::..　　  .: t-_ヽ    ::::\ 　  ＼:."'-,, .
"===　 　　 　/ i,- t -<;;;;､;;;;､,,､,､;;､i___ゝ   :::::\　    ＼:.:.:"'-,,
"===　    　 /　 ''ｰ-ﾞｰ':::::::::::::::::::::::　  ::::::\　     ＼:.:.:"'-,,
"===　 　   /　　　　　.::::::::::::::::::::::　  　::::::\        ＼:.:.:.:.:
"===　     /　　　　....::::::::::::::::::::　　　 　 :::::\         \:.:.:.:.:
"
"================
"===TO-DO list===
"================
" configure color-scheme
" coc
" fzf
" air-line
" tab
" init-shellScript
" multi-cursor

" Plugin  
call plug#begin('~/.vim/plugged')
	" Language support
	Plug 'fatih/vim-go'	
	Plug 'rust-lang/rust.vim'
	
	" Tools for coding
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-fugitive'				" fugitive
    Plug 'itchyny/lightline.vim'

	Plug 'w0rp/ale'						" ale 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		" coc.vim
	Plug 'junegunn/fzf'					" fuzzy file finder	
	Plug 'honza/vim-snippets'
	Plug 'terryma/vim-multiple-cursors'
call plug#end()

" BASIC CONFIGURATION ::
"
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
set autoindent      smartindent     cindent

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            COC.set
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"" No backup setting 
set nobackup        nowritebackup   

"" Show less in Pmenu
set updatetime=100

set shortmess+=c
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++


" MY vim runtime path(Mac) : $VIMRUNTIME=/usr/share/vim/vim82

" autocmd BufWritePre * :%s/\s\+$//e


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
"===coc.nvim
"===
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ ]

inoremap <silent><expr> <c-W>o coc#refresh()



"===
"===leetcode-vim
"===
let g:leetcode_browser='chrome'

"===
"===NERDTree
"===
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore = ['\.DS_Store$']
map <leader>n :NERDTreeToggle<CR>

"===
"===lightline
"===
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
