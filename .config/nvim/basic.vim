"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => My Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the leader key to <space>
nnoremap <space> <nop>
let mapleader="\<space>"

nmap     ; :
inoremap ; :
cnoremap ; :
vnoremap ; :

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"Auto reload when init file is changed
augroup auto-source   | " The name of the group is arbitrary
autocmd!              | " Deletes all auto-commands in the current group
autocmd BufWritePost *.vim,coc-settings.json source $MYVIMRC
augroup END           | " Switch back to default auto-group

" Tab complete suggests without completing first.
set wildmode=list:longest,full
"
" Enable mouse support
set mouse=a
"
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
cnorea w!! w !sudo tee % >/dev/null
"
"
" Set cursorline
set cursorline
"
"
" Dont show matching parantheses except it is newly insterted
set noshowmatch
let loaded_matchparen = 1


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
nnoremap <leader><Tab> <C-^>
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
set cmdheight=1
set updatetime=300
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


set nofoldenable 	" screw folding

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
set nowritebackup   " suppress creation of ~ files

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
nmap <leader>W :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>Q :qa!<cr>
nmap <leader>WQ :wqa!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

"Show line numbers
set number
set relativenumber

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
"map <C-k> <C-W>k
"map <C-j> <C-W>j
"map <C-h> <C-W>h
"map <C-l> <C-W>l

