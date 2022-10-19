require('nvim-lsp-installer').setup{}
local lspconfig = require('lspconfig')
local servers = {
    'sumneko_lua',
    'clangd'
}
lspconfig.sumneko_lua.setup{}
lspconfig.clangd.setup{}
