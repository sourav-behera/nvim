return require('packer').startup(function(use)
   -- Packer can manage itself 
    use 'wbthomason/packer.nvim'
    
-- Colorscheme
    use 'catppuccin/nvim'
    use 'navarasu/onedark.nvim'
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
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'onsails/lspkind.nvim' -- kind icons
-- Snippets
    use 'rafamadriz/friendly-snippets'
    use "L3MON4D3/LuaSnip"
-- Indentlines and autopairs
    use 'windwp/nvim-autopairs'
    use 'lukas-reineke/indent-blankline.nvim'
-- Status Line
    use 'nvim-lualine/lualine.nvim'
-- Buffer line
    use 'akinsho/bufferline.nvim'
    
    use 'kyazdani42/nvim-web-devicons'
    use 'goolord/alpha-nvim'
end)
