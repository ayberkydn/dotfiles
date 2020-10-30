"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
">>>>>>>>>>>>>> autocommands >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cursorline only on highlighted windows
augroup CursorLine
  au! 
  au VimEnter,WinEnter,BufWinEnter,InsertLeave * setlocal cursorline
  au WinLeave,InsertEnter * setlocal nocursorline
augroup END

"Auto reload when init file is changed
augroup auto-source    
  au!               
  au BufWritePost *.vim,coc-settings.json source $MYVIMRC
augroup END            

"open help in right window
autocmd Filetype help wincmd L

" Set to auto read when a file is changed from the outside
set autoread
set autowrite
au FocusGained,BufEnter * checktime

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
">>>>>>>>>>>>>> set statements >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright

" Tab complete suggests without completing first.
set wildmode=list:longest,full

" Enable mouse support
set mouse=a

" Dont show matching parantheses except it is newly insterted
set noshowmatch
let loaded_matchparen = 1

"" buffers can exist in background without being in a window
set hidden

" enable soft word wrap
set formatoptions=l "wrap long lines
set textwidth=79
set linebreak "dont cut at middle of the word
set nowrap

" Keep inserting comment leader character on subsequent lines
set formatoptions+=r "instert mode enter

" use hard tabs for indentation
set tabstop=4
set softtabstop=4 	" makes backspace treat 4 spaces like a tab
set shiftwidth=4    " makes indents 4 spaces wide as well
set expandtab 		" actually, expand tabs into spaces

set noshowmode
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching

set incsearch		" incremental search
set hlsearch		" highlights searches

"==History ==

" save more in undo history
set history=1000
set undolevels=1000000

set undofile        " keep a persistent backup file
set undodir=$HOME/.vim/undo


"== Syntax Highlighting & Indents ==
syntax on
filetype on

filetype indent on
filetype plugin on
filetype plugin indent on

set autoindent 		" always indent
set smartindent

set backspace=indent,eol,start 	" backspace over everything in insert mode

" = Status Line ==

" Always show status line
set laststatus=2
set cmdheight=1

" Update diagnostics etc with 0.1 delay
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn set signcolumn=yes

" screw folding
set nofoldenable 	

" Enable wild menu, but ignore nonsensical files
set wildmenu
set wildignorecase
set wildmode=longest:full

" longer more descriptive auto-complete prompts
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete  "  ??

"== Swap Files ==
set noswapfile 		" suppress creation of swap files
set nobackup 		" suppress creation of backup files
set nowritebackup   " suppress creation of ~ files

"== VIM user interface ==
" Set 10 lines to the cursor - when moving vertically using j/k
set scrolloff=10

"Show line numbers
set number
set relativenumber

set whichwrap+=h,l

" Don't redraw while executing macros (good performance config)
"set lazyredraw 
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the leader key to <space>
nnoremap <space> <nop>
let mapleader="\<space>"

" easy commands
noremap  ; :
cnoremap ; :
vnoremap ; :

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow repeat operator with visual selection
vnoremap . :normal .<CR>

" move by screen lines, not by real lines 
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" use to quickly escape to normal mode while typing 
tnoremap kj <ESC>
tnoremap jk <ESC>
cnoremap kj <ESC>
cnoremap jk <ESC>
inoremap kj <ESC>
inoremap jk <ESC>
onoremap jk <ESC>
onoremap k <ESC>

" use  <leader>y and  <leader>p to copy and paste from system clipboard
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>p :set paste<cr>"+]p:set nopaste<cr>
noremap <leader>P :set paste<cr>"+]P:set nopaste<cr>

" jump to previous buffer with double Tab
nnoremap <Tab><Tab> <C-^>
nnoremap <Tab>l <cmd> bnext<CR>
nnoremap <Tab>h <cmd> bprevious<CR>
nnoremap <Tab>1 <cmd> b1<CR>
nnoremap <Tab>2 <cmd> b2<CR>
nnoremap <Tab>3 <cmd> b3<CR>
nnoremap <Tab>4 <cmd> b4<CR>
nnoremap <Tab>5 <cmd> b5<CR>
nnoremap <Tab>6 <cmd> b6<CR>
nnoremap <Tab>7 <cmd> b7<CR>
nnoremap <Tab>8 <cmd> b8<CR>
nnoremap <Tab>9 <cmd> b9<CR>
nnoremap <Tab>0 <cmd> b10<CR>
" move between buffers with <leader>l h

" Fast saving and quitting
nmap <leader>w :w!<cr>
nmap <leader>W :wa!<cr>
nmap <leader>q :q!<cr>
nmap <leader>Q :qa!<cr>
nmap <leader>WQ :wqa!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

nnoremap <Leader>b :ls<CR>:b<Space>j
