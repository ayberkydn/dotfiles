call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'metakirby5/codi.vim'
"Plug 'jupyter-vim/jupyter-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'unblevable/quick-scope'       
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vim-which-key'



call plug#end()


let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1

colorscheme gruvbox


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree
" let NERDTreeShowHidden=1
" let NERDTreeIgnore = ['\.pyc$', '__pycache__']
" let g:NERDTreeWinSize=35
" map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark<Space>
" map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>s :FZF<CR> 
nnoremap <leader>b :Buffers<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CocExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <space>e :CocCommand explorer<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick-scope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Which Key
nnoremap <silent> <leader> :WhichKey ','<CR>
nnoremap <silent> <Space> :WhichKey '<Space>'<CR>



