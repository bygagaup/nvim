-- lua/plugins/rust_tools.lua

local rt = require("rust-tools")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

rt.setup({
    server = {
        capabilities = capabilities,
        on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, silent = true }
            vim.keymap.set("n", "K", rt.hover_actions.hover_actions, opts)
            vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, opts)
        end,
    },
})
