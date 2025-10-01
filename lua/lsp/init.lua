-- lua/lsp/init.lua

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Rust
require("lsp.rust").setup(lspconfig, capabilities)

-- Lua
require("lsp.lua").setup(lspconfig, capabilities)
