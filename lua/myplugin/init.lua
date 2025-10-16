local M = {}

M.config = {
    greeting = "Hello ",
    ending = true
}

function M.setup(opts)
    opts = opts or {}
    M.config = vim.tbl_deep_extend("force", M.config, opts)

    pcall(vim.api.nvim_del_user_command, "Greet")
    vim.api.nvim_create_user_command( "Greet", function (opts)
        M.greet(opts.args)
    end, { nargs = 1 })
end

function M.greet(name)
    local end_part = M.config.ending and "Welcome to Neovim." or ""

    print(M.config.greeting .. name .. "! " .. end_part)
end

return M
