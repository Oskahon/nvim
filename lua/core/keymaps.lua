------------
-- Keymaps
------------

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
-- Close file
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close file' })

-- Open Ex Browser
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { silent = true, desc = 'Open Ex' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Close buffer' })
-- Close other buffers
vim.keymap.set('n', '<leader>bo', ':silent! :%bd|edit #<CR>:silent! bd #<CR>', { silent = true, desc = 'Close other buffers' })

-- Clear Highlights
vim.keymap.set('n', '<leader>l', ':nohl<CR>', { silent = true, desc = 'clear highlights' })

-- Center window when navigating
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Navigate quickfix list
vim.keymap.set('n', '[c', ':cnext<CR>zz', { silent = true })
vim.keymap.set('n', ']c', ':cprev<CR>zz', { silent = true })
vim.keymap.set('n', '<leader>co', ':copen<CR>', { silent = true })
vim.keymap.set('n', '<leader>cc', ':cclose<CR>', { silent = true })
vim.keymap.set('n', '<leader>cl', ':cfirst<CR>zz', { silent = true })
vim.keymap.set('n', '<leader>cf', ':clast<CR>zz', { silent = true })

-- Edit inside and outside of double quotes
vim.keymap.set('o', 'iq', 'i"', { noremap = true, silent = true })
vim.keymap.set('o', 'aq', 'a"', { noremap = true, silent = true })

-- Select inside and outside of double quotes
vim.keymap.set('x', 'iq', 'i"', { noremap = true, silent = true })
vim.keymap.set('x', 'aq', 'a"', { noremap = true, silent = true })
