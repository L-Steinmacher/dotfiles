require("panzer.remap")
require("panzer.packer")
require("panzer.set")

local augroup = vim.api.nvim_create_augroup
local PanzerGroup = augroup('Panzer', {})
local AutoSaveGroup = augroup('AutoSaveOnSwitch', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({'BufWritePre'}, {
    group = PanzerGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('FocusLost', {
    group = AutoSaveGroup,
    pattern = '*',
    command = [[silent! wall]]
})

