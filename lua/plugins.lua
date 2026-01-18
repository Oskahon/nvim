-- File: lua/plugins.lua

-- Vaatii toimiakseen C kääntäjän
-- Käytä Windowsin puolella esim. Developer Powershell for VS 2022
-- Tällöin käytössä cl
--
-- This file can be loaded by calling `require('plugins')` from your `init.lua`

-- It will automatically install lazy.nvim if it's not already installed.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with our list of plugins
require("lazy").setup({
  -- Theming
  -- 'folke/tokyonight.nvim' is a popular, modern theme for Neovim.
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure the theme is loaded first
    priority = 1000, -- a high priority to ensure it loads before other plugins
    config = function()
        require("tokyonight").setup({
            transparent = true,
            styles = {
                sidebards = "transparent",
                floats = "transparent",
            },
        })
      -- Set the colorscheme to tokyonight
      -- You can change the style here. Other options include 'storm', 'night', and 'day'.
      vim.cmd.colorscheme "tokyonight"
    end,
  },

  -- Lualine for a nicer looking statusline
  {
      "nvim-lualine/lualine.nvim",
      event = "BufEnter",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
          require("lualine").setup({
              options = {
                  theme = "tokyonight",
              }
          })
      end,
  },

  -- Treesitter for advanced syntax highlighting and more
  -- 'nvim-treesitter/nvim-treesitter' provides a parser-based syntax engine
  {
    "nvim-treesitter/nvim-treesitter",
    -- The build step is recommended to compile and update parsers
    branch = "master", -- branch is archived but can't get main branch to work
    build = ":TSUpdate",
    config = function()
      -- When we configure treesitter, we need to require it first
      local treesitter_config = require("nvim-treesitter.configs")

      -- Call the setup function to configure the plugin
      treesitter_config.setup({
        -- A list of parser names, or "all"
        -- We recommend installing parsers selectively based on the languages you use.
        -- For example: "python", "rust", "c_sharp", "go", "typescript", "tsx", "css", "json"
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html" },

        -- Install parsers synchronously (blocks UI on first install)
        sync_install = false,

        -- Automatically install missing parsers when entering a buffer
        -- Recommendation: set to false if you don't want auto-installs
        auto_install = true,

        -- Enable the highlighting module
        highlight = {
          enable = true,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some flicker.
          -- Consider setting this to `false` and using `nvim-treesitter-textobjects`
          -- for indentation calculations.
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },

  "neovim/nvim-lspconfig",
  
  -- You can add more plugins here, for example:
  -- { "tpope/vim-fugitive" },
  -- { "nvim-lualine/lualine.nvim" },

})

