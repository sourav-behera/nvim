-- Map Ctrl+h, Ctrl+j, Ctrl+k, and Ctrl+l to move the cursor in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })

-- Normal mode mappings
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- Insert mode mappings
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap('x', '<A-j>', ":m'>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<A-k>', ":m'<-2<CR>gv=gv", { noremap = true, silent = true })

