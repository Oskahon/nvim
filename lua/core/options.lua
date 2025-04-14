------------
-- Options
------------

-- Set the leader key
vim.g.mapleader = " "

-- Tabs --
-- Set amount to spaces tab creates
vim.opt.softtabstop = 4

-- Set amount of spaces used for indentation (e.g. >> or <<)
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Set word wrap
vim.opt.wrap = false

-- Search Options --
-- Ignore case
vim.opt.ignorecase = true;
-- Set smartcase
vim.opt.smartcase = true;

-- Transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
