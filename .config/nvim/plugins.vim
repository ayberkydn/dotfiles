""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
cnoreabbrev ii PlugInstall<cr>

"--->Language related
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

"--->Vimspector
let g:vimspector_enable_mappings = 'HUMAN'
Plug 'puremourning/vimspector'

"--->FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"--->Sneak
Plug 'justinmk/vim-sneak'

"--->Which key
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

"--->Startify
Plug 'mhinz/vim-startify'

"--->Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"--->Utils
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jupyter-vim/jupyter-vim'
Plug 'liuchengxu/vim-clap'
Plug 'jpalardy/vim-slime'
Plug 'metakirby5/codi.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'

"---> Appereance
"utilities
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
"colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
"icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
"
"
"" plugin settings
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/startify.vim
source ~/.config/nvim/sneak.vim
source ~/.config/nvim/airline.vim
source ~/.config/nvim/nerdcommenter.vim
source ~/.config/nvim/tagbar.vim
source ~/.config/nvim/whichkey.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/coc-explorer.vim
source ~/.config/nvim/colors.vim

