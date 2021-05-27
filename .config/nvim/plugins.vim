if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
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

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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
"Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

call plug#end()
"


lua << EOF
    local lspconfig = require'lspconfig'
    -- lspconfig.pyright.setup{
    --     cmd={"docker", "run", "-i", "ayberkydn/deep-learning", "pyright-langserver", "--stdio"}
    -- }

    lspconfig.jedi_language_server.setup{
    
    --cmd={"docker", "run", "-i", "ayberkydn/deep-learning", "jedi-language-server"}
    --cmd={"docker run -i ayberkydn/deep-learning jedi-language-server"}
    }

    lspconfig.dockerls.setup{}
    lspconfig.yamlls.setup{}


    local treesitterconfig = require'nvim-treesitter.configs'

    treesitterconfig.setup {
        ensure_installed={"python", "c", "cpp"},
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
nnoremap <leader>fb :Buffers<CR> 
nnoremap <leader>ff :Files<CR> 
nnoremap <leader>fl :Lines<CR> 
nnoremap <leader>ft :Colors<CR> 
nnoremap <leader>fc :Commits<CR> 
nnoremap <leader>fm :Maps<CR> 
nnoremap <leader>f; :Commands<CR> 

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
nnoremap <silent> <space> :WhichKey '<Space>'<CR>
nnoremap <silent> , :WhichKey ','<CR>
set timeoutlen=500
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jupyter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <F5> <cmd> JupyterRunFile<CR>
" nnoremap <F5> <cmd> JupyterRunFile<CR>
