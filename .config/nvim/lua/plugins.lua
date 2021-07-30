
-- => Load Plugins
return require('packer').startup(
    function()
------------------------------------------------------------------------------
        -------------> Utils <------------------
        use 'wbthomason/packer.nvim'

        use 'tpope/vim-repeat'
        use 'tpope/vim-surround'
        use 'tpope/vim-commentary'
        use 'christoomey/vim-tmux-navigator'
        use 'mbbill/undotree'
        use 'justinmk/vim-sneak'

        use 'nvim-lua/popup.nvim'
        use 'nvim-lua/plenary.nvim'
        use 'nvim-telescope/telescope.nvim'
        use 'kyazdani42/nvim-web-devicons'
        use 'kyazdani42/nvim-tree.lua'

        ----------> Git <-----------------
        use 'airblade/vim-gitgutter'
        use 'tpope/vim-fugitive'

        ----------> Appereance <-----------------
        use 'majutsushi/tagbar'
        use 'vim-airline/vim-airline'
        use 'vim-airline/vim-airline-themes'
        use 'ryanoasis/vim-devicons' 
        use 'folke/tokyonight.nvim'

        ----------> Language related <------------
        use 'neovim/nvim-lspconfig'
        use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
        use 'nvim-treesitter/playground'
        use 'folke/which-key.nvim'
------------------------------------------------------------------------------
    end
)

