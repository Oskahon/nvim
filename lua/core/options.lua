------------
-- Options
------------

-- Set the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Use UTF-8 encoding
vim.opt.encoding = "utf-8"

-- Syntax Highlighting
vim.opt.syntax = "on"

-- Linenumbers
vim.opt.number = false
vim.opt.relativenumber = false

-- Scrolling Offset
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8 -- Same for horizontal scrolling

-- Show signs in the number column?
vim.opt.signcolumn = "number"

-- [[ Tabs and Indentation ]]
-- Set tabstop
vim.opt.tabstop = 4

-- Set amount to spaces tab creates
vim.opt.softtabstop = 4

-- Set amount of spaces used for indentation (e.g. >> or <<)
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Automatically indent new lines based on the previous line
vim.opt.autoindent = true

-- Smarter indentation based on file type (requires filetype detection, usually on by default)
vim.opt.smartindent = true

-- [[ Search Options ]]
-- Ignore case
vim.opt.ignorecase = true;
-- Set smartcase
vim.opt.smartcase = true;

-- [[ File Handling ]]
-- Disable backup and swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false -- If backup is enabled, this prevents making a backup during write

-- [[ Behaviour ]]
-- Set timeout length (how long neovim waits between keypresses)
vim.opt.timeoutlen = 300

-- How wrapped lines are handled visually
vim.opt.linebreak = true -- Wrap lines at 'breakat' characters (like spaces) instead of mid-word

-- Set word wrap
vim.opt.wrap = false

-- [[ Themes etc. ]]
-- Transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

