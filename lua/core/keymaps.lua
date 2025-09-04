------------
-- Keymaps
------------

-- Save file
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close file' })
-- Close file
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })

-- Open Ex Browser
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { silent = true, desc = 'Open Ex' })

-- Close buffer
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = 'Close buffer' })
-- Close other buffers
vim.keymap.set('n', '<leader>bo', ':silent! :%bd|edit #<CR>:silent! bd #<CR>', { silent = true, desc = 'Close other buffers' })

-- Clear Highlights
vim.keymap.set('n', '<leader>l', ':nohl<CR>', { silent = true, desc = 'clear highlights' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Center window when navigating
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', 'G', 'Gzz')

-- Navigate quickfix list
vim.keymap.set('n', '[c', ':cnext<CR>zz', { silent = true })
vim.keymap.set('n', ']c', ':cprev<CR>zz', { silent = true })
vim.keymap.set('n', '<leader>co', ':copen<CR>', { silent = true })
vim.keymap.set('n', '<leader>cc', ':cclose<CR>', { silent = true })
vim.keymap.set('n', '<leader>cl', ':cfirst<CR>zz', { silent = true })
vim.keymap.set('n', '<leader>cf', ':clast<CR>zz', { silent = true })

-- Edit inside and outside of double quotes
vim.keymap.set('o', 'iq', 'i"', { silent = true })
vim.keymap.set('o', 'aq', 'a"', { silent = true })

-- Select inside and outside of double quotes
vim.keymap.set('x', 'iq', 'i"', { silent = true })
vim.keymap.set('x', 'aq', 'a"', { silent = true })

-- :find
vim.keymap.set('n', '<leader>f', ':fin ')

-- Keybinds for easier split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- Keymap for search and replace in selected block
vim.keymap.set('x', '<leader>s', ':s/\\%V')

-- Move line up and down
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { silent = true })

-- Move selected lines up and down
vim.keymap.set('v', '<M-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<M-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- Move line up and down in insert mode
vim.keymap.set('i', '<M-j>', '<Esc>:m .+1<CR>==gi', { silent = true })
vim.keymap.set('i', '<M-k>', '<Esc>:m .-2<CR>==gi', { silent = true })

-- Fix indentations for file
vim.keymap.set('n', '<leader>=', 'ggVG=')
