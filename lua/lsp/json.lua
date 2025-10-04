-- lua/lsp/json.lua

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config('jsonls', {
    capabilities = capabilities,
    settings = {
        json = {
            validate = { enable = true },
        },
    },
})

vim.lsp.enable('jsonls')
