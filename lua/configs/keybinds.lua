
-- Define the keybindings
local keybindings = {
  -- Insert mode mappings
  { mode = 'i', shortcut = '<C-h>', command = '<Left>' },
  { mode = 'i', shortcut = '<C-j>', command = '<Down>' },
  { mode = 'i', shortcut = '<C-k>', command = '<Up>' },
  { mode = 'i', shortcut = '<C-l>', command = '<Right>' },

  -- VSCode like block navigation
  -- Normal mode mappings
  { mode = 'n', shortcut = '<A-j>', command = ':m .+1<CR>==' },
  { mode = 'n', shortcut = '<A-k>', command = ':m .-2<CR>==' },

  -- Insert mode mappings
  { mode = 'i', shortcut = '<A-j>', command = '<Esc>:m .+1<CR>==gi' },
  { mode = 'i', shortcut = '<A-k>', command = '<Esc>:m .-2<CR>==gi' },

  -- Visual mode mappings
  { mode = 'x', shortcut = '<A-j>', command = ":m'>+1<CR>gv=gv" },
  { mode = 'x', shortcut = '<A-k>', command = ":m'<-2<CR>gv=gv" },
  -- Nvim tree
  { mode = 'n', shortcut = '<C-e>', command = ":NvimTreeToggle<CR>"}
}

-- Apply the keybindings
for _, mapping in ipairs(keybindings) do
  vim.api.nvim_set_keymap(mapping.mode, mapping.shortcut, mapping.command, { noremap = true, silent = true })
end
