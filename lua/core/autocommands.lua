------------
-- Autocommands
------------

-- Yank highlight autocommand
vim.api.nvim_set_hl(0, "YankHighlightRegion", { bg = "pink", fg = "black" })

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "YankHighlightRegion",
            timeout = 200,
        })
    end,
})
