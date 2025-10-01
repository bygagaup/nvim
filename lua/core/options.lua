-- lua/core/optional.lua

local g = vim.g
local opt = vim.opt

opt.number = true         -- показывать номера строк
opt.relativenumber = true -- относительные номера
opt.tabstop = 4           -- размер таба
opt.shiftwidth = 4        -- автосдвиг
opt.expandtab = true      -- табы = пробелы
opt.smartindent = true    -- умный автоотступ
opt.termguicolors = true  -- true colors в терминале
opt.cursorline = true     -- подсветка строки курсора
opt.scrolloff = 8         -- отступ сверху/снизу при скролле
opt.sidescrolloff = 8     -- отступ по бокам
opt.wrap = false          -- не переносить строки


-- disable language provider support (use lua and vimscript plugins only)
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_python_provider = 0
g.loaded_python3_provider = 0
