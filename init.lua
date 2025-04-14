------------
-- Options
------------

-- Tabs

-- Set amount to spaces tab creates
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Transparent background
vim.cmd([[
    highlight Normal guibg=none ctermbg=none
    highlight NormalNC guibg=none ctermbg=none
    highlight NonText guibg=none ctermbg=none
]])
