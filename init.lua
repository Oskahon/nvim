-- Import config files etc.
require("core")
require("plugins")
require("lsp")

require("myplugin").setup({
    greeting = "Welcome super hacker ",
    -- ending = false,
})
