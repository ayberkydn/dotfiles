""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

"-------------> Utils <------------------
Plug 'benmills/vimux' "check
Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree'
Plug 'jupyter-vim/jupyter-vim', {'for': 'python'}
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-sneak'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'SirVer/ultisnips'
"Plug 'mhinz/vim-startify'
Plug 'glepnir/dashboard-nvim'
"--->Git
Plug 'airblade/vim-gitgutter' "check
Plug 'tpope/vim-fugitive' "check
"Plug 'mrossinek/deuterium'
Plug 'psliwka/vim-smoothie'
"----------> Appereance <-----------------
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons' 
Plug 'TaDaa/vimade'
"----------> Language related <------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'antoinemadec/coc-fzf'
 
call plug#end()
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline#extensions#coc#enabled = 1

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1 "tagbar integration
let g:airline#extensions#tabline#enabled = 1 "tab and buffer line
let g:airline#extensions#tabline#buffer_nr_show = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger and navigate completion.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap ,rn <Plug>(coc-rename)

" Applying codeAction to the region (visual or normal select)
xmap ,a  <Plug>(coc-codeaction-selected)
nmap ,a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap ,ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap ,qf  <Plug>(coc-fix-current)

" Function and classes are text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)


nnoremap <silent><nowait> ,a  :<C-u>CocFzfList diagnostics<cr>
nnoremap <silent><nowait> ,e  :<C-u>CocFzfList extensions<cr>
nnoremap <silent><nowait> ,c  :<C-u>CocFzfList commands<cr>
nnoremap <silent><nowait> ,o  :<C-u>CocFzfList outline<cr>
nnoremap <silent><nowait> ,s  :<C-u>CocFzfList -I symbols<cr>
nnoremap <silent><nowait> ,j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> ,k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> ,p  :<C-u>CocFzfListResume<CR>

let g:coc_global_extensions = [
            \'coc-explorer', 
            \'coc-git', 
            \'coc-highlight', 
            \'coc-json', 
            \'coc-marketplace',
            \'coc-python', 
            \'coc-snippets', 
            \'coc-vimlsp', 
            \'coc-yaml', 
            \'coc-yank', 
            \]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme dracula
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
