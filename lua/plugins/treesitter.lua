-- lua/plugins/treesitter.lua

require("nvim-treesitter.configs").setup({
    ensure_installed = { "rust", "lua", "vim", "toml" },
    sync_install = true,
    highlight = { enable = true },
})
