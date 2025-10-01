-- lua/lsp/rust.lua

local M = {}

M.setup = function(lspconfig, capabilities)
    lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        settings = {
            ["rust-analyzer"] = {
                cargo = { allFeatures = true },
                checkOnSave = true,
                check = {
                    command = "clippy",
                },
            },
        },
    })
end

return M
