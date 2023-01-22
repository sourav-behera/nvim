return require('packer').startup(function(use)
-- Packer can manage itself 
    use 'wbthomason/packer.nvim'
-- Colorscheme
    use 'catppuccin/nvim'
-- Syntax Highlighting
   use 'nvim-treesitter/nvim-treesitter'
-- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'
-- LSP
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind.nvim' -- kind icons
-- Snippets
    use 'rafamadriz/friendly-snippets'
    use "L3MON4D3/LuaSnip"
-- Utilities
    use 'windwp/nvim-autopairs'
    use 'lewis6991/gitsigns.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
--  Interface
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-neo-tree/neo-tree.nvim'
    use 'akinsho/bufferline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'goolord/alpha-nvim'
end)
