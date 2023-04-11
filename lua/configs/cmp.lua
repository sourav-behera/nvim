-- Load cmp
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

-- Set up lspkind
local kind_icons = {
  with_text = true,
  symbol_map = {
    Text = '',
    Method = '',
    Function = '',
    Constructor = '',
    Variable = '',
    Class = 'ﴯ',
    Interface = 'ﰮ',
    Module = '',
    Property = 'ﰠ',
    Field = '烈',
    Event = '',
    Operator = '',
    Constant = '',
    Enum = '',
    EnumMember = '',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Reference = '',
    Folder = '',
    Diagnostic = '',
  },
}


-- Configure cmp
cmp.setup({
snippet = {
  expand = function(args)
    luasnip.lsp_expand(args.body) -- for luasnip users
  end
},
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'spell' },
    { name = 'cmd' }
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
      vim_item.menu = ({
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
        path = '[Path]',
        spell = '[Spell]',
      })[entry.source.name]
      return vim_item
    end,
  },
  window = {
    completion = cmp.config.window.bordered {
      border = "rounded",
      col_offset = -3,
      side_padding = 1,
    },
    documentation = cmp.config.window.bordered {
      border = "rounded",
      winhighlight = "Normal:Normal,FloatBorder:CmpDocumentationBorder,CursorLine:CmpCursorLine,Search:Search",
      col_offset = -3,
      side_padding = 1,
    },
  },
})

