""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

"--->ALE
"Plug 'dense-analysis/ale'

"--->COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
"Plug 'vim-syntastic/syntastic'

"---> Appereance
"-> utilities
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
"-> colors
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
"-> icons
Plug 'ryanoasis/vim-devicons'

call plug#end()
cnoreabbrev ii PlugInstall<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_file_number = 0
let g:startify_bookmarks = [ {'c': '~/.config/nvim/'}]
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
let g:sneak#s_next = 1

 
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
" => NERDCommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>cc <plug>NERDCommenterToggle

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> :Files<CR> 
nnoremap <leader>; :Commands<CR> 
nnoremap <C-f> :Files<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Which Key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <space> :WhichKey '<Space>'<CR>
nnoremap <silent> , :WhichKey ','<CR>
set timeoutlen=500


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python,c,cpp,cu TagbarOpen
let g:tagbar_position = 'topleft vertical'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""" => COC 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
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

" Applying codeAction to the selected region.
" Example: `,aap` for current paragraph
xmap ,a  <Plug>(coc-codeaction-selected)
nmap ,a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap ,ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap ,qf  <Plug>(coc-fix-current)

" Map function and class text objects
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

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}



nnoremap <silent><nowait> ,a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> ,e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> ,c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> ,o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> ,s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> ,j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> ,k  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> ,p  :<C-u>CocListResume<CR>

let g:coc_global_extensions = ['coc-json', 
                              \'coc-yaml', 
                              \'coc-explorer', 
                              \'coc-snippets', 
                              \'coc-vimlsp', 
                              \'coc-python', 
                              \'coc-yank', 
                              \'coc-marketplace']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
colorscheme one
let g:airline_theme='one'
