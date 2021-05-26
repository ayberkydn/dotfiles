""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

"-------------> Utils <------------------
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'SirVer/ultisnips'

"----------> Git <-----------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"----------> Appereance <-----------------
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons' 

"----------> Language related <------------
Plug 'sheerun/vim-polyglot'
 
call plug#end()
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#coc#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1 "tagbar integration
let g:airline#extensions#tabline#enabled = 1 "tab and buffer line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
let g:airline_theme='onedark'
set background=dark
set termguicolors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>: :Commands<CR> 
vnoremap <leader>: :Commands<CR> 

nnoremap <leader>; :CocFzfList commands<CR> 
vnoremap <leader>; :CocFzfList commands<CR> 

nnoremap <leader>: :CocFzfList<CR> 
vnoremap <leader>: :CocFzfList<CR> 

nnoremap <leader>fb :Buffers<CR> 
nnoremap <leader>ff :Files<CR> 
nnoremap <leader>fl :Lines<CR> 
nnoremap <leader>ft :Colors<CR> 
nnoremap <leader>fc :Commits<CR> 
nnoremap <leader>fm :Maps<CR> 
nnoremap <leader>f; :Commands<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cc <plug>NERDCommenterToggle


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
let g:sneak#s_next = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_file_number = 0
let g:startify_bookmarks = [ {'c': '~/.config/nvim/'}]
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:dashboard_default_executive ='fzf'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType python,c,cpp,cu TagbarOpen
let g:tagbar_position = 'topleft vertical'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Whichkey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <space> :WhichKey '<Space>'<CR>
nnoremap <silent> , :WhichKey ','<CR>
set timeoutlen=500
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jupyter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <F5> <cmd> JupyterRunFile<CR>
" nnoremap <F5> <cmd> JupyterRunFile<CR>
