" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => My Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the leader key to <space>
nnoremap <space> <nop>
let mapleader="\<space>"

" Tab complete suggests without completing first.
set wildmode=list:longest,full
"
" Enable mouse support
set mouse=a
"
" highlight column 80
set colorcolumn=80
"
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
"
"
" Allow repeat operator with visual selection
vnoremap . :normal .<CR>
"
"
" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null
"
"
" Set cursorline
set cursorline
"
"
" Dont show matching parantheses except it is newly insterted
set showmatch
let loaded_matchparen = 1
"
" press ; to issue commands in normal mode (no more shift holding)
nnoremap ; :

" move by screen lines, not by real lines - great for creative writing
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" use to quickly escape to normal mode while typing 
inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>


" use  <leader>y and  <leader>p to copy and paste from system clipboard
noremap <leader>y "+y
noremap <leader>Y "+Y
" when pasting from clipboard toggle the paste feature and use the indent
" adjusted paste ]p and ]P. This prevents breaking of alignment when pasting
" in code from websites and etc.. 
noremap <leader>p :set paste<cr>"+]p:set nopaste<cr>
noremap <leader>P :set paste<cr>"+]P:set nopaste<cr>

" use +/- to increment/decrement numbers
nnoremap + <C-a>
nnoremap - <C-x>

" reselect visual block after indent/outdent
xnoremap < <gv
xnoremap > >gv

"???? Remap gm to skip to the actual middle of the line, not middle of screen
noremap gm :call cursor(0, virtcol('$')/2)<CR>

"
"" buffers can exist in background without being in a window
set hidden

" Automatically save before commands like :next and :make
set autowrite

" jump to previous buffer with Tab
nnoremap <Tab> <C-^>
" move between buffers with <leader>l h

" cd to file's directory
map <leader>cd :cd %:p:h<cr>:pwd<cr>

"============= Formatting, Indentation & Behavior =============================

" enable soft word wrap
set formatoptions=l "wrap long lines
set textwidth=79
set linebreak "dont cut at middle of the word

" Keep inserting comment leader character on subsequent lines
set formatoptions+=r "instert mode enter

" use hard tabs for indentation
set tabstop=4
set softtabstop=4 	" makes backspace treat 4 spaces like a tab
set shiftwidth=4    " makes indents 4 spaces wide as well
set expandtab 		" actually, expand tabs into spaces

au FocusLost * silent! :wa	" save when switching focus 

"============= Search & Matching ==============================================

set showcmd			" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching

set incsearch		" incremental search
set hlsearch		" highlights searches

"============= History ========================================================

" save more in undo history
set history=1000
set undolevels=1000000

set undofile        " keep a persistent backup file
set undodir=$HOME/.vim/undo


"=========== Syntax Highlighting & Indents ====================================
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set autoindent 		" always indent
set smartindent

set backspace=indent,eol,start 	" backspace over everything in insert mode

" ============== Status Line ==================================================

" Always show status line
set laststatus=2

"============== Folding =======================================================

set nofoldenable 	" screw folding
"============== Completion ====================================================

" Enable wild menu, but ignore nonsensical files
set wildmenu
set wildignorecase
set wildmode=longest:full

set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.obj,*~
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**
set wildignore+=*/.nx/**,*.app

" longer more descriptive auto-complete prompts
set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete  "  ??

"============== Swap Files ====================================================

set noswapfile 		" suppress creation of swap files
set nobackup 		" suppress creation of backup files
set nowb 			" suppress creation of ~ files

"
"------------------------------------------------------------------------------
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Fast saving and quitting
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>wq :wq!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

"Show line numbers
set number

" " Configure backspace so it acts as it should act
" set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
"set lazyredraw 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


