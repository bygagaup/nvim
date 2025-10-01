-- lua/lsp/lua.lua

local M = {}

M.setup = function(lspconfig, capabilities)
    lspconfig.lua_ls.setup {
        capabilities = capabilities,
        settings = {
            Lua = {
                diagnostics = { globals = { "vim" } },
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true),
                    checkThirdParty = false,
                },
            },
        },
    }
end

return M
