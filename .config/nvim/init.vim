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
  au BufWritePost *.vim source $MYVIMRC
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

" easy commands
nnoremap ; :
cnoremap ; :
vnoremap ; :


"Backspace and x 
noremap <BS> X

" HL left right
noremap H 0
noremap L $


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

"U is redo
nnoremap U <C-r>
nnoremap Y y$

"use system clipboard
set clipboard=unnamedplus

" use <leader>v to select all
noremap <leader>v ggVG

" use  <leader>y and  <leader>p to copy and paste from " register
noremap <leader>y ""y
noremap <leader>Y ""Y
noremap <leader>p :set paste<cr>""]p:set nopaste<cr>
noremap <leader>P :set paste<cr>""]P:set nopaste<cr>

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

" Fast saving and quitting
nnoremap <leader>w :w!<cr>
nnoremap <leader>W :wa!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>Q :qa!<cr>
nnoremap <leader>WQ :wqa!<cr>

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" paste with c-v
inoremap <C-v> <C-r>+


lua << EOF

require("plugins")


require'nvim-treesitter.configs'.setup {
    ensure_installed={
        "python",
        "c", "cpp",
        "dockerfile",
        "yaml",
        "json",
        "bash",
    },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
    textobjects = { enable = true },
    playground = { enable = true },

}

EOF


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1 "tagbar integration
let g:airline#extensions#tabline#enabled = 1 "tab and buffer line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme tokyonight
let g:airline_theme='onedark'
set background=dark
set termguicolors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Telescope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>fb :Telescope buffers<CR> 
nnoremap <leader>ff :Telescope file_browser<CR> 
nnoremap <leader>f; :Telescope commands<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
let g:sneak#s_next = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType python,c,cpp,cu TagbarOpen
let g:tagbar_position = 'topleft vertical'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Whichkey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=200
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

nnoremap <C-n> :NvimTreeToggle<CR>
