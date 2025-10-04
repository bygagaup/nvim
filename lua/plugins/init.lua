-- lua/plugins/init.lua

require("lazy").setup({
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },

    -- Rust
    {
        'mrcjkb/rustaceanvim',
        version = '^6',
        lazy = false,
    },

    -- Автодополнение
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "L3MON4D3/LuaSnip" },

    -- Подсветка
    { "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
})

-- Загружаем конфиги каждого плагина
require("plugins.mason")
require("plugins.cmp")
require("plugins.treesitter")
require("plugins.telescope")
