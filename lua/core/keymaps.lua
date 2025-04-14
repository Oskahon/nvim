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

