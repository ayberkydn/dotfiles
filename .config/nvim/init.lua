------------------------------------------------------------------------
------------------------ Install plugins ---------------------------------
------------------------------------------------------------------------

-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- use 'github/copilot.vim'
  use 'akinsho/toggleterm.nvim'
  use "folke/which-key.nvim"
  use "max397574/better-escape.nvim"
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'justinmk/vim-sneak'
  -- use 'kyazdani42/nvim-tree.lua' --- file tree ---
  -- use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
  -- Git related plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  -- use 'lewis6991/gitsigns.nvim'
  -- cosmetics
  -- use 'goolord/alpha-nvim' -- start screen
  use 'navarasu/onedark.nvim' -- theme
  -- use 'folke/tokyonight.nvim' -- theme
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }
  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
  -- use { -- LSP Configuration & Plugins
  --   'neovim/nvim-lspconfig',
  --   requires = {
  --     'williamboman/mason.nvim',
  --     'williamboman/mason-lspconfig.nvim',
  --     'j-hui/fidget.nvim',
  --     'folke/neodev.nvim',
  --   },
  -- }
  -- use {
  --   'hrsh7th/nvim-cmp',
  --   requires = {
  --     'hrsh7th/cmp-nvim-lsp',
  --     'L3MON4D3/LuaSnip',
  --     'saadparwaiz1/cmp_luasnip'
  --   },
  -- }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }
  -- Add custom plugins from ~/.config/nvim/lua/custom/plugins.lua
  local has_plugins, plugins = pcall(require, 'custom.plugins')
  if has_plugins then
    plugins(use)
  end

  if is_bootstrap then
    require('packer').sync()
  end
end)
-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
------------------------------------------------------------------------
------------------------ Setup plugins ---------------------------------
------------------------------------------------------------------------
-- require 'alpha'.setup(require 'alpha.themes.startify'.config)
require("toggleterm").setup()
-- require("nvim-tree").setup()
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '||',
    section_separators = ' ',
  },
}
require("bufferline").setup {}
-- require('devcontainer').setup {}
require('Comment').setup()
-- require('indent_blankline').setup {
--   char = '┊',
--   show_trailing_blankline_indent = false,
-- }
-- require('gitsigns').setup {
--   signs = {
--     add = { text = '+' },
--     change = { text = '~' },
--     delete = { text = '_' },
--     topdelete = { text = '‾' },
--     changedelete = { text = '~' },
--   },
-- }


vim.o.timeout = true
vim.o.timeoutlen = 1000
require("which-key").setup {}

require("better_escape").setup {
  mapping = { "jk", "kj" },
  timeout = 200,
  keys = "<Esc>",
}


-- [[ Setting options ]]
vim.o.hlsearch = false -- Set highlight on search
vim.wo.number = true -- Make line numbers default
vim.o.mouse = 'a' -- Enable mouse mode
vim.o.breakindent = true -- Enable break indent
vim.o.undofile = true -- Save undo history
vim.o.ignorecase = true -- Case insensitive searching
vim.o.smartcase = true -- UNLESS /C or capital in search
vim.o.updatetime = 250 -- Decrease update time (for swap file generation)
vim.wo.signcolumn = 'yes' -- the column at the left always on
vim.o.termguicolors = true -- set colorscheme
vim.cmd [[colorscheme onedark]]
vim.o.completeopt = 'menuone,noselect'
-- menuone: show menu even with one candidate
-- noselect: do not automatically select the completion candidate
vim.g.mapleader = ' ' -- leader is space
vim.g.maplocalleader = ' '
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- require("lsp-setup")
require("telescope-setup")


-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | silent! LspStop | silent! LspStart | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})
