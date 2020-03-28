" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Keep indendation
set autoindent

" Syntax highlight
syntax on

" Highlight search
set hlsearch

" Move cursor when typing search pattern (incremental search)
set incsearch

" Search is case sensitive only when pattern has uppercase letter
set smartcase

" Line numbering
set number

" Mouse support
set mouse=a

" Show commands
set showcmd

" Enable menu that appears when completing ex commands
set wildmenu

" Make buffers hidden instead of unloading them when navigating
" so that we don't need ! when navigating with unsaved modifications
set hidden

" Always show at least 2 lines above or below the cursor
set scrolloff=2

" Use system clipboard
set clipboard=unnamedplus

" Easy navigation of windows
noremap <C-h> <C-w><C-h>
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>

" Disable arrow keys to get used to hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

