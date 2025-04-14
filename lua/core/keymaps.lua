------------
-- Keymaps
------------

-- Save file
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
-- Close file
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close file' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Close buffer' })
-- Close other buffers
vim.keymap.set('n', '<leader>bo', ':%bd|e#|bd#<CR>', { desc = 'Close other buffers' })
