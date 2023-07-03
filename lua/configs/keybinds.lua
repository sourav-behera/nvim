
-- Define the keybindings
local keybindings = {
  -- Insert mode mappings
  { mode = 'i', lhs = '<C-h>', rhs = '<Left>' },
  { mode = 'i', lhs = '<C-j>', rhs = '<Down>' },
  { mode = 'i', lhs = '<C-k>', rhs = '<Up>' },
  { mode = 'i', lhs = '<C-l>', rhs = '<Right>' },

  -- VSCode like block navigation
  -- Normal mode mappings
  { mode = 'n', lhs = '<A-j>', rhs = ':m .+1<CR>==' },
  { mode = 'n', lhs = '<A-k>', rhs = ':m .-2<CR>==' },

  -- Insert mode mappings
  { mode = 'i', lhs = '<A-j>', rhs = '<Esc>:m .+1<CR>==gi' },
  { mode = 'i', lhs = '<A-k>', rhs = '<Esc>:m .-2<CR>==gi' },

  -- Visual mode mappings
  { mode = 'x', lhs = '<A-j>', rhs = ":m'>+1<CR>gv=gv" },
  { mode = 'x', lhs = '<A-k>', rhs = ":m'<-2<CR>gv=gv" },
}

-- Apply the keybindings
for _, mapping in ipairs(keybindings) do
  vim.api.nvim_set_keymap(mapping.mode, mapping.lhs, mapping.rhs, { noremap = true, silent = true })
end
