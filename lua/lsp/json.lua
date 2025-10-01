-- lua/lsp/jsonlua

local M = {}

M.setup = function(lspconfig, capabilities)
    lspconfig.jsonls.setup {
        capabilities = capabilities,
        settings = {
            json = {
                validate = { enable = true },
            },
        },
    }
end

return M
