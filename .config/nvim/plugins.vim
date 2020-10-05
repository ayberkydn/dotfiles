call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'metakirby5/codi.vim'
"Plug 'jupyter-vim/jupyter-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'


call plug#end()


let g:airline_theme='dark'

colorscheme gruvbox


"nerdtree
map <C-n> :NERDTreeToggle<CR>
