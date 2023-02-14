require('nvim-lsp-installer').setup{}
local lspconfig = require('lspconfig')
local servers = {
    'lua_ls',
    'clangd'
}
lspconfig.lua_ls.setup{}
lspconfig.clangd.setup{}
