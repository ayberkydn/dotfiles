"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
cnoreabbrev ii PlugInstall<cr>
"
call plug#begin()

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
Plug 'puremourning/vimspector'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'majutsushi/tagbar'

"Plug 'skanehira/docker-compose.vim'
"Plug 'skanehira/docker.vim'


Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'



""""""""""""""" Themes, Colors and Icons """"""""""""""""""""""""""""""""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'





Plug 'ctrlpvim/ctrlp.vim'


Plug 'mhinz/vim-startify'




call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='dark'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tagbar#enabled = 1 "tagbar integration
let g:airline#extensions#tabline#enabled = 1 "tab and buffer line at top


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme space-vim-dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree
" let NERDTreeShowHidden=1
" let NERDTreeIgnore = ['\.pyc$', '__pycache__']
" let g:NERDTreeWinSize=35
" map <leader>e :NERDTreeToggle<cr>
" map <leader>f :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CocExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>s :FZF<CR> 
nnoremap <Tab> :Buffers<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick-scope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Which Key
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> , :WhichKey ','<CR>
set timeoutlen=250


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python,c,cpp,cu TagbarOpen

